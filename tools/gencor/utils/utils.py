import time
import inspect
import config
import re
import signal
from contextlib import contextmanager

from pyflakes.api import check
from pyflakes.reporter import Reporter


def surface_decode(tokenizer, token_ids):
    """Decode token id(s) to their MID-SEQUENCE surface string on an UNMODIFIED
    tokenizer, by prepending a throwaway anchor and slicing it back off.

    SentencePiece/metaspace tokenizers (Llama, CodeLlama, Gemma, ...) strip the
    leading space of the FIRST token in a decoded string, so a bare
    ``tokenizer.decode([id])`` turns ``"▁t"`` into ``"t"`` instead of
    ``" t"`` -- which desyncs the transducer. The old fix (``remove_split``)
    mutated the tokenizer to drop that Strip, but it ALSO dropped the Prepend
    normalizer, changing how prompts encode and breaking cross-repo
    reproducibility. Prepending an anchor keeps the token off position 0, so the
    space survives, and we recover the identical surface WITHOUT touching the
    tokenizer -- ``encode()`` stays standard. Verified byte-identical to the old
    remove_split map across CodeLlama/Qwen/Deepseek vocabularies; a no-op for
    byte-level (Ġ) tokenizers, which never stripped the space.
    """
    if isinstance(token_ids, int):
        token_ids = [token_ids]
    else:
        token_ids = list(token_ids)
    anchor = getattr(tokenizer, "_surface_anchor", None)
    if anchor is None:
        a_ids = tokenizer.encode("a", add_special_tokens=False)
        anchor = (a_ids, len(tokenizer.decode(a_ids, skip_special_tokens=True)))
        tokenizer._surface_anchor = anchor
    a_ids, a_len = anchor
    return tokenizer.decode(a_ids + token_ids, skip_special_tokens=True)[a_len:]


class _SyntaxStr(str):
    """A pyflakes syntax-error message line, flagged out-of-band.

    ``is_syntax`` lets ``langprofile``'s ``is_syntax_error`` classify the line by
    ORIGIN (pyflakes routed it through ``Reporter.syntaxError``, not ``flake``)
    without a visible marker in the message text or matching CPython phrasing.
    Serializes as its plain string value, so it stays clean in JSON/reports.
    """
    is_syntax = True


class _CollectReporter(Reporter):
    """Collect pyflakes results by kind through its own callbacks.

    pyflakes hands a parse failure to ``syntaxError`` and name flakes to
    ``flake`` -- distinct methods -- so we keep that split here instead of
    re-parsing formatted text. Only the syntax *message* line is wrapped in
    ``_SyntaxStr``; its source/caret context lines stay plain, matching how the
    default Reporter formats them.
    """
    def __init__(self):
        self.flakes, self.syntax = [], []

    def flake(self, message):
        self.flakes.append(str(message))

    def syntaxError(self, filename, msg, lineno, offset, text):
        lineno = max(lineno or 0, 1)
        if offset is not None:
            offset = max(offset, 1)
            self.syntax.append(_SyntaxStr("%s:%d:%d: %s" % (filename, lineno, offset, msg)))
        else:
            self.syntax.append(_SyntaxStr("%s:%d: %s" % (filename, lineno, msg)))
        if text is not None:
            line = text.splitlines()[-1]
            self.syntax.append(line)
            if offset is not None:
                self.syntax.append(re.sub(r'\S', ' ', line[:offset - 1]) + "^")

    def unexpectedError(self, filename, msg):
        # decode/processing failure (not a parse error) -- left untagged, as before
        self.syntax.append("%s: %s" % (filename, msg))


class TimeLimitExceeded(Exception):
    """Raised by time_limit when the wrapped block runs past its budget."""
    pass


@contextmanager
def time_limit(seconds):
    """Abort the wrapped block after `seconds` via SIGALRM (main thread only).

    Used to bound work that can hang outside the normal generation timeout --
    e.g. check_after_gen -> eos_handling re-lexes a degenerate remainder whose
    string-literal regex can backtrack for hours. `seconds=None` runs unguarded;
    `seconds<=0` (deadline already passed) aborts immediately. Falls back to
    unguarded if not on the main thread (signal unavailable there).
    """
    if seconds is None:
        yield
        return
    if seconds <= 0:
        raise TimeLimitExceeded()

    def _handler(signum, frame):
        raise TimeLimitExceeded()

    try:
        prev = signal.signal(signal.SIGALRM, _handler)
    except (ValueError, AttributeError):
        yield  # not main thread / no SIGALRM -> run unguarded
        return
    signal.setitimer(signal.ITIMER_REAL, seconds)
    try:
        yield
    finally:
        signal.setitimer(signal.ITIMER_REAL, 0)
        signal.signal(signal.SIGALRM, prev)

def code_analysis(code, filename='<unknown>'):
    # pyflakes classifies for us: a parse failure goes to Reporter.syntaxError,
    # name flakes to Reporter.flake. _CollectReporter keeps that split by ORIGIN,
    # so syntax errors are identifiable without matching CPython phrasing (the
    # syntax message line rides back as a _SyntaxStr; see is_syntax_error).
    rep = _CollectReporter()
    check(code, filename, reporter=rep)

    ignore_warnings = [
        'imported but unused',
        'assigned to but never used',
        'redefinition of unused',
        'defined as a builtin referenced before assignment',
        # lint warnings, not errors -- the code still runs fine
        'f-string is missing placeholders',
        'repeated with different values',
    ]
    flakes = [m for m in rep.flakes
              if m and not any(ign in m for ign in ignore_warnings)]
    return flakes + rep.syntax

def remove_escape_characters(code):
    """
    Remove escape characters from the code string.
    """
    if code.endswith('\\') and not code.endswith('\\\\'):
        code += '\\'
    code = code.encode().decode('unicode_escape')
    code = code.replace('\r\n', '\n').replace('\r', '\n')
    return code


def remove_newline_in_brackets(code):
    open_brackets = '([{'
    close_brackets = ')]}'
    bracket_stack = []
    new_code = ''
    i = 0
    while i < len(code):
        char = code[i]
        if char in open_brackets:
            bracket_stack.append(char)
            new_code += char
            i += 1
        elif char in close_brackets:
            if bracket_stack:
                bracket_stack.pop()
            new_code += char
            i += 1
        elif char == '\n' and bracket_stack:
            # Skip newline inside brackets
            i += 1
            while i < len(code) and code[i] == ' ':
                i += 1  # Skip spaces after newline
        else:
            new_code += char
            i += 1
    return new_code

def handle_long_string(code):
    a, b = "'''", '"""'
    del1 = code.find(a)
    del2 = code.find(b)
    
    new_code = ""
    end = 0
    while del1 != -1 or del2 != -1:
        # print(new_code)
        if del1 == -1 or (del2 != -1 and del2 < del1): # """ - b
            start = del2
            tmp = b
            opp = a
        else:
            start = del1
            tmp = a
            opp = b
        new_code += code[end:start]
        end = code.find(tmp, start+1)
        new_code += tmp + code[start+3:end].replace('\n','').replace(tmp[0], opp[0])
        if end == -1:
            if code[end] != '\n':
                new_code += code[end]
            return new_code
        del1 = code.find(a, end+1)
        del2 = code.find(b, end+1)
    new_code += code[end:]
    return new_code

def remove_long_string(code):
    a, b = "\n    '''", '\n    """'
    del1 = code.find(a)
    del2 = code.find(b)
    if del1 == -1 and del2 == -1:
        return code
    if del1 == -1:
        new_code = code[:del2]
    else:
        new_code = code[:del1]
    new_code += '\n    "prompt was here"\n'
    return new_code


class OrderedSet:
    def __init__(self):
        self.data = []
    def add(self, item):
        if item not in self.data:
            self.data.append(item)
    def __len__(self):
        return len(self.data)
    def __getitem__(self, index):
        return self.data[index]
    def __contains__(self, item):
        return item in self.data
    def __iter__(self):
        return iter(self.data)
    def __str__(self):
        return str(f"OrderedSet({self.data})")

_task_log_fh = None  # open file handle for the current task's {bench_id}.log


def task_log_enabled():
    return config.args is not None and config.args.log > 0


def open_task_log(path):
    """Start streaming logs to a per-task file, written live so a failing or
    hung task still leaves its log (not only on success)."""
    close_task_log()
    if not task_log_enabled():
        return
    import os
    global _task_log_fh
    os.makedirs(os.path.dirname(path), exist_ok=True)
    _task_log_fh = open(path, "w")


def close_task_log():
    global _task_log_fh
    if _task_log_fh is not None:
        try:
            _task_log_fh.close()
        except Exception:
            pass
        _task_log_fh = None


def log(msg, log_level=0):

    if config.args is not None and log_level > config.args.log:
        return
    else:
        log_level_list = ["ERROR", "WARN", "INFO", "DEBUG", "VERBOSE"]
        t_local = time.localtime(time.time())
        time_format = '%Y-%m-%d %H:%M:%S'
        time_str = time.strftime(time_format, t_local)
        log_level_str = log_level_list[log_level-1]
        caller_class = "Static"
        stack = inspect.stack()
        if "self" in stack[2][0].f_locals:
            caller_class = stack[2][0].f_locals["self"].__class__.__name__
        caller_method = stack[2][0].f_code.co_name
        if config.args is None or not getattr(config.args, "quiet", False):
            print(f"{time_str} {("["+config.colors[log_level_str]+log_level_str+config.colors["ENDC"]+"]"): <16} [{caller_class}] {caller_method} :: {msg}", flush=True)
        # stream (plain, no color) to the per-task {bench_id}.log, flushed live
        if _task_log_fh is not None:
            _task_log_fh.write(f"{time_str} [{log_level_str}] [{caller_class}] {caller_method} :: {msg}\n")
            _task_log_fh.flush()

def is_loggable(log_level):
    return config.args is not None and log_level <= config.args.log

def verbose(msg):
    log(msg, 5)
def debug(msg):
	log(msg, 4)
def info(msg):
	log(msg, 3)
def warn(msg):
	log(msg, 2)
def error(msg):
	log(msg, 1)

def can_log_verbose():
    return is_loggable(5)
def can_log_debug():
    return is_loggable(4)
def can_log_info():
    return is_loggable(3)
def can_log_warn():
    return is_loggable(2)
def can_log_error():
    return is_loggable(1)

def list_replace(lst, old, new):
	return [new if x == old else x for x in lst]

operator_name = {
    '!': "EXCLAMATION",
    '!=': "NOTEQUAL",
    '%': "PERCENT",
    '%=': "PERCENTEQUAL",
    '&': "AMPER",
    '&=': "AMPEREQUAL",
    '(': "LPAR",
    ')': "RPAR",
    '*': "STAR",
    '**': "DOUBLESTAR",
    '**=': "DOUBLESTAREQUAL",
    '*=': "STAREQUAL",
    '+': "PLUS",
    '+=': "PLUSEQUAL",
    ',': "COMMA",
    '-': "MINUS",
    '-=': "MINEQUAL",
    '->': "RARROW",
    '.': "DOT",
    '...': "ELLIPSIS",
    '/': "SLASH",
    '//': "DOUBLESLASH",
    '//=': "DOUBLESLASHEQUAL",
    '/=': "SLASHEQUAL",
    ':': "COLON",
    ':=': "COLONEQUAL",
    ';': "SEMI",
    '<': "LESS",
    '<<': "LEFTSHIFT",
    '<<=': "LEFTSHIFTEQUAL",
    '<=': "LESSEQUAL",
    '=': "EQUAL",
    '==': "EQEQUAL",
    '>': "GREATER",
    '>=': "GREATEREQUAL",
    '>>': "RIGHTSHIFT",
    '>>=': "RIGHTSHIFTEQUAL",
    '@': "AT",
    '@=': "ATEQUAL",
    '[': "LSQB",
    ']': "RSQB",
    '^': "CIRCUMFLEX",
    '^=': "CIRCUMFLEXEQUAL",
    '{': "LBRACE",
    '|': "VBAR",
    '|=': "VBAREQUAL",
    '}': "RBRACE",
    '~': "TILDE",
}

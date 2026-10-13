#!/usr/bin/env python
"""OCaml evaluator: combine generated .ml files with benchmark assertions.

Compile/assertion errors and timeouts fail a task. Successful assertions are
counted individually. Prompt echoes after '(* <System Prompt> *)' are removed.
For multi-turn repair files, --last-turn selects only the last turn so earlier
invalid attempts do not interfere. Missing task files are skipped; -f selects
specific task IDs. The evaluator uses OCaml's standard library.
Run with the artifact's OCaml backend available on PATH:
  python tools/evaluation/eval_ocaml.py -o <variant-directory> \
      -b data/paper/datasets/all_in_one_v2.4 -t 12 [--last-turn] [-f tasks.txt]
"""
import argparse, json, os, re, glob, subprocess, tempfile, shutil
from pathlib import Path

# Count assertions independently, catching exceptions so one failure does not abort later tests.
_HARNESS = ("let __p = ref 0\nlet __t = ref 0\n"
            "let __chk f = incr __t; (try if f () then incr __p with _ -> ())\n")


def resolve_ocaml():
    o = shutil.which("ocaml")
    if o:
        return o
    for c in sorted(Path.home().glob(".opam/*/bin/ocaml")):
        return str(c)
    return None


def strip_echo(code):
    c = code.find("(* <System Prompt> *)")
    return code[:c] if c != -1 else code


def extract_last_turn(text):
    lines = text.split("\n")
    marks = [i for i, l in enumerate(lines) if l.startswith("(* === Turn")]
    if not marks:
        return strip_echo(text)
    chunk = lines[marks[-1] + 1:]
    i = 0
    while i < len(chunk) and (chunk[i].startswith("(*") or not chunk[i].strip()):
        i += 1
    return "\n".join(chunk[i:])


def run_one(ocaml, code, tests, timeout):
    ntotal = len(re.findall(r"\bassert\b", tests)) or 1
    tests2 = tests.replace("assert ", "__chk @@ fun () -> ")
    prog = (code + "\n" + _HARNESS + tests2 +
            '\nlet () = ignore assertions'
            '\nlet () = Printf.printf "TCRESULT %d %d\\n" !__p !__t\n')
    d = tempfile.mkdtemp()
    try:
        f = os.path.join(d, "t.ml")
        open(f, "w").write(prog)
        try:
            r = subprocess.run([ocaml, f], capture_output=True, text=True, timeout=timeout, cwd=d)
        except subprocess.TimeoutExpired:
            return "timeout", "Timeout", 0, ntotal
        m = re.search(r"TCRESULT (\d+) (\d+)", r.stdout or "")
        if m:
            npass, nrun = int(m.group(1)), int(m.group(2))
            ok = (nrun > 0 and npass == nrun)
            return ("passed" if ok else "failed",
                    None if ok else "%d/%d tc" % (npass, nrun), npass, nrun or ntotal)
        errl = [l for l in (r.stderr or "").splitlines() if l.strip()]     # Compilation errors, etc.
        return "failed", (errl[-1][:70] if errl else "rc=%d" % r.returncode), 0, ntotal
    finally:
        shutil.rmtree(d, ignore_errors=True)


def main():
    ap = argparse.ArgumentParser(description="OCaml evaluator (ocaml compile+run)")
    ap.add_argument("-o", "--output-dir", required=True, help="variant dir with {HumanEval|MBPP}/{n}.ml")
    ap.add_argument("-b", "--benchmark", default="all_in_one_v2.3")
    ap.add_argument("-t", "--timeout", type=float, default=15.0)
    ap.add_argument("-f", "--filter", default=None, help="File of task IDs to evaluate")
    ap.add_argument("--last-turn", action="store_true", help="Execute only the final repair turn")
    ap.add_argument("-v", "--verbose", action="store_true")
    a = ap.parse_args()

    ocaml = resolve_ocaml()
    if not ocaml:
        print("ocaml executable not found (~/.opam/*/bin/ocaml)"); return
    bench = [r for r in json.load(open(a.benchmark.lower() + ".json"))
             if str(r.get("language", "")).lower() == "ocaml"]
    if a.filter:
        keep = set(x.strip() for x in open(a.filter) if x.strip())
        bench = [r for r in bench if r["task_id"] in keep]

    passed = failed = timeout = missing = 0
    tc_ratio_sum = 0.0; tc_pass = tc_total = 0
    for it in bench:
        tid = it["task_id"]; tests = it["tests"]
        p = os.path.join(a.output_dir, tid + ".ml")
        if not os.path.exists(p):
            missing += 1; continue
        raw = open(p).read()
        code = extract_last_turn(raw) if a.last_turn else strip_echo(raw)
        st, det, npass, nrun = run_one(ocaml, code, tests, a.timeout)
        denom = nrun or 1
        tc_ratio_sum += npass / denom; tc_pass += npass; tc_total += denom
        if st == "passed":
            passed += 1
        else:
            if st == "timeout": timeout += 1
            else: failed += 1
            if a.verbose: print("  [%s] %s  %s  (tc %d/%d)" % (st, tid, det, npass, denom))

    ev = passed + failed + timeout
    print("[%s]" % a.output_dir)
    print("  evaluated %d (missing/skip %d) | passed %d  failed %d  timeout %d"
          % (ev, missing, passed, failed, timeout))
    if ev:
        print("  task pass@1: %.1f%%  (%d/%d)" % (passed / ev * 100, passed, ev))
        print("  testcase acc (macro): %.1f%%" % (tc_ratio_sum / ev * 100))
        print("  testcase acc (micro): %.1f%%  (%d/%d)" % (tc_pass / tc_total * 100 if tc_total else 0, tc_pass, tc_total))
    else:
        print("  (No .ml files to evaluate)")


if __name__ == "__main__":
    main()

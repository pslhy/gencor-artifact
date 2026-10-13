#!/usr/bin/env python
"""BigCodeBench and HumanEval evaluator for generated .py files.

BigCodeBench uses TestCases(unittest.TestCase); HumanEval uses check(entry).
Each task runs in a separate process with a timeout and temporary working
directory. Missing tasks are skipped, so subset directories are supported.
Tasks depending on unavailable network or system resources can fail.
Use the artifact's isolated evaluation environment:
  .gencor/eval-python/bin/python tools/evaluation/eval_bcb.py \
      -o <variant-directory> -b data/paper/datasets/bigcodebench-hard -t 12
"""
import argparse, json, io, os, re, sys, tempfile, multiprocessing as mp
from contextlib import redirect_stdout, redirect_stderr

_TESTDEF = re.compile(r"def (test\w+)\(")


def extract_last_turn(text):
    """Extract the last repair turn after '# === Turn N ===', skipping leading comment echoes."""
    lines = text.split("\n")
    marks = [i for i, l in enumerate(lines) if l.startswith("# === Turn")]
    chunk = lines[marks[-1] + 1:] if marks else lines
    i = 0
    while i < len(chunk) and (chunk[i].startswith("#") or not chunk[i].strip()):
        i += 1
    return "\n".join(chunk[i:])


def _run(code, test, entry, ntotal, q, seed=None):
    import unittest
    # Task-launched Python commands must use the same evaluation environment.
    os.environ["PATH"] = os.path.dirname(sys.executable) + os.pathsep + os.environ.get("PATH", os.defpath)
    try:
        os.chdir(tempfile.mkdtemp())          # Keep task-created files in a temporary directory
    except Exception:
        pass
    ns = {}
    try:
        with redirect_stdout(io.StringIO()), redirect_stderr(io.StringIO()):
            if seed is not None:
                # Seed in the task process: Python reseeds random after fork.
                # Reset per task so scheduling and earlier tasks cannot matter.
                import random
                import numpy as np
                from faker import Faker
                random.seed(seed)
                np.random.seed(seed)
                Faker.seed(seed)
            exec(code + "\n" + test, ns)
            if "TestCases" in ns:
                suite = unittest.TestLoader().loadTestsFromTestCase(ns["TestCases"])
                res = unittest.TextTestRunner(stream=io.StringIO(), verbosity=0).run(suite)
                run = res.testsRun
                npass = run - len(res.failures) - len(res.errors)   # Number of passed test methods
                ok = res.wasSuccessful() and run > 0
                det = None if ok else "%df/%de/%drun" % (len(res.failures), len(res.errors), run)
                q.put(("passed" if ok else "failed", det, npass, run or ntotal)); return
            elif "check" in ns:                # HumanEval style (counted as one test)
                ns["check"](ns[entry]); q.put(("passed", None, 1, 1)); return
            else:
                q.put(("failed", "no TestCases/check", 0, ntotal)); return
    except BaseException as exc:
        q.put(("failed", "%s: %s" % (type(exc).__name__, str(exc)[:60]), 0, ntotal))


def run_one(code, test, entry, ntotal, timeout, seed=None):
    q = mp.Queue()
    p = mp.Process(target=_run, args=(code, test, entry, ntotal, q, seed))
    p.start(); p.join(timeout)
    if p.is_alive():
        p.terminate(); p.join(); return "timeout", "Timeout", 0, ntotal
    if q.empty():
        return "failed", ("SignalExit" if (p.exitcode or 0) < 0 else "ProcessExit"), 0, ntotal
    return q.get()


def main():
    ap = argparse.ArgumentParser(description="BigCodeBench/HumanEval evaluator (run with bcb env)")
    ap.add_argument("-o", "--output-dir", required=True, help="variant dir with {task_id}.py")
    ap.add_argument("-b", "--benchmark", default="bigcodebench-hard", help="benchmark json (no .json)")
    ap.add_argument("-t", "--timeout", type=float, default=20.0, help="per-task timeout (s)")
    ap.add_argument("-s", "--save-dir", default=None, help="dir to save failed report (optional)")
    ap.add_argument("-f", "--filter", default=None, help="File of task IDs to evaluate")
    ap.add_argument("--last-turn", action="store_true", help="Execute only the final turn of a multi-turn repair .py file")
    ap.add_argument("--eval-seed", type=int, default=0, help="Evaluation RNG seed, separate from generation seeds (default: 0)")
    ap.add_argument("-v", "--verbose", action="store_true", help="print each fail")
    a = ap.parse_args()
    if not 0 <= a.eval_seed < 2**32:
        ap.error("--eval-seed must be in [0, 2**32).")
    if os.environ.get("PYTHONHASHSEED") != str(a.eval_seed):
        os.execve(sys.executable, [sys.executable, *sys.argv],
                  dict(os.environ, PYTHONHASHSEED=str(a.eval_seed)))
    # Missing seed dependencies are an environment error, not a task failure.
    import numpy
    import faker
    print(f"Evaluation seed: {a.eval_seed} (random, numpy, Faker, PYTHONHASHSEED)")

    bench = json.load(open(a.benchmark.lower() + ".json"))
    if a.filter:
        keep = set(x.strip() for x in open(a.filter) if x.strip())
        bench = [it for it in bench if it["task_id"] in keep]
    passed = failed = timeout = missing = 0
    tc_ratio_sum = 0.0          # Sum of per-task test pass ratios for the macro average
    tc_pass = tc_total = 0      # Passed/total test methods for the micro average
    fails = []
    for item in bench:
        tid = item["task_id"]; test = item["test"]; entry = item.get("entry_point", "task_func")
        ntotal = len(_TESTDEF.findall(test)) or 1
        p = os.path.join(a.output_dir, "%s.py" % tid)
        if not os.path.exists(p):
            missing += 1; continue
        code = open(p).read()
        if a.last_turn:
            code = extract_last_turn(code)
        code = code.replace("`", "")
        st, det, npass, nrun = run_one(code, test, entry, ntotal, a.timeout, seed=a.eval_seed)
        denom = nrun or ntotal
        tc_ratio_sum += (npass / denom) if denom else 0.0
        tc_pass += npass; tc_total += denom
        if st == "passed":
            passed += 1
        else:
            if st == "timeout": timeout += 1
            else: failed += 1
            fails.append({"task_id": tid, "status": st, "detail": det, "testcase": "%d/%d" % (npass, denom)})
            if a.verbose: print("  [%s] %s  %s  (tc %d/%d)" % (st, tid, det, npass, denom))

    ev = passed + failed + timeout
    print("[%s]" % a.output_dir)
    print("  evaluated %d (missing/skip %d) | passed %d  failed %d  timeout %d"
          % (ev, missing, passed, failed, timeout))
    if ev:
        print("  task pass@1: %.1f%%  (%d/%d)" % (passed / ev * 100, passed, ev))
        print("  testcase acc (macro, mean per-task ratio): %.1f%%" % (tc_ratio_sum / ev * 100))
        print("  testcase acc (micro, all test methods): %.1f%%  (%d/%d)" % (tc_pass / tc_total * 100 if tc_total else 0, tc_pass, tc_total))
    else:
        print("  (No .py files to evaluate)")
    if a.save_dir:
        os.makedirs(a.save_dir, exist_ok=True)
        rp = os.path.join(a.save_dir, "failed.json")
        json.dump(fails, open(rp, "w"), indent=2, ensure_ascii=False)
        print("  failed report: %s" % rp)


if __name__ == "__main__":
    main()

# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Run files from list of files as subprocesses at the same time.
#     The function should output with:
#         list: The exit codes of the subprocesses.
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import time
#     import threading
#     def task_func(file_list):
#     ```
from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    chunksize = 10
    # This is our worker function to process the file list in parallel.
    def run_jobs(jobs):
        procs = []
        for job in jobs:
            procs.append((
                job,
                subprocess.Popen(job.args, stdout=subprocess.PIPE,
                stderr=subprocess.PIPE),
                threading.Lock(),
                threading.Event()
            ))
        
        for task in procs:
            try:
                stdout, stderr = task[1].communicate(timeout=timedelta(seconds=10))
                returncode = task[1].returncode
                if returncode != 0 :
                    print(returncode)
            finally:
                print("Finished job", task[0].name, "after", timedelta(seconds=10))
            task[2].release()
            task[3].set()
    
        
        print("Finished all jobs.")
        
        return [task[1].returncode for task in procs]
    
    jobs = []
    for file in file_list:
        job = {
            'args': "run " + file,
            'name': file,
        }
        jobs.append(job)
    # We want to run the jobs in parallel
    pool = threading.Pool(20)
    results = pool.map(run_jobs, [jobs[i:i+chunksize] for i in range(len(jobs))]))
    print("Output:", results)

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:44:82: unmatched ')'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    for file in file_list:
        subprocess.run("run " + file, shell=True)  # Run the file
        time.sleep(10)  # Wait for 10 seconds
    return 0

TIME_LIMIT = 3600 # 60 minutes
lock = threading.Lock()
tasks = []
tasks.append((task_func, [["file1", "file2", "file3"]]))
start_time = time.monotonic()

def run_task():
    while len(tasks) > 0:
        with lock:
            task_func, args = tasks.pop()
        print(f"Starting task {args}")
        # Use the overall time limit to set the timeout for a task
        timeout = TIME_LIMIT - (time.monotonic() - start_time)
        if timeout <= 0:
            print("Time limit reached. Terminating.")
            return 1
        else:
            task_func(args)
            print(f"Completed task {args}.")
    return 0

run_task()


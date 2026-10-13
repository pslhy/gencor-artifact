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


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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

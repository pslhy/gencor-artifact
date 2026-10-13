from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    # Time execution efficiency
    start_time = time.time()

    # Multithreading list
    threads = []

    # Final result
    results = []

    def run_file(f):
        # Get the exit code
        result = subprocess.call(["python", f], shell=True)
        # Append to the results list
        results.append(result)

    # Create threads for each file and append them to our threads list
    for f in file_list:
        thread = threading.Thread(target=run_file, args=(f,))
        threads.append(thread)

    # Start all threads
    for thread in threads:
        thread.start()

    # Wait for all threads to complete
    for thread in threads:
        thread.join()
    
    # Execution time
    elapsed_time = time.time() - start_time

    print("\nFinished in %s seconds." % str(timedelta(seconds=elapsed_time)))

    return results


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

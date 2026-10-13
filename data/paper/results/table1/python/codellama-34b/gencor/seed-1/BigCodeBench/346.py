
from datetime import timedelta
import subprocess
import os
import sys
import time
def task_func(script_path, wait=True, *args):
    # Construct arguments to the Python interpreter
    cmd = [sys.executable, script_path] + list(args)
    # Run the script as a subprocess and make sure to assert that the exit code is 0
    try:
        retcode = subprocess.check_call(cmd)
        if wait:
            time.sleep(5) # wait for script to complete
            if retcode != 0:
                raise RuntimeError("Bad Exit Code {0}".format(retcode))
            if not wait:
                return retcode
        else:
            return None
    except (FileNotFoundError, PermissionError, subprocess.CalledProcessError, OSError) as e:
        if isinstance(e, subprocess.CalledProcessError):
            cwd = os.path.dirname(script_path)
            full_path = os.path.join(cwd, script_path)
            print("ERROR:An exception occurred running {0}".format(full_path))
            print(e)
            raise e from None
        else:
            full_path = os.path.join(cwd, script_path)
            print("ERROR: An exception occurred running {0}".format(full_path))
            print(e)
            raise e from None


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Run a Python script as a process with predefined arguments. By default, waits for the process to complete. If wait is False, the function returns None. Raise: - ValueError: If the script does not exist. - subprocess.CalledProcessError: If the script raises an exception.
#     The function should output with:
#         int: The return code of the subprocess. If 'wait' is False, returns None.
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import os
#     import sys
#     import time
#     def task_func(script_path, wait=True, *args):
#     ```

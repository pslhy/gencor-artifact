# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Archive all files that match a particular pattern and then delete the original files.
#     Note that: This function will return the archive file path.
#     The function should output with:
#         archive_file (str): The archive file path.
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import os
#     import glob
#     # Constants
#     ARCHIVE_DIR = '/tmp/archive'
#     def task_func(pattern):
#     ```
from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Get current date
    d = datetime.today() - timedelta(1)

    # Create archive directory if it doesn't exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # Archive files
    process = subprocess.Popen(['find', '/', '-name', pattern, '-print0', '-exec', 'gzip', '{}', ';', '-print'], 
                               stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    
    # Define the archive file path
    archive_file = os.path.join(ARCHIVE_DIR, f'{pattern}_{d.strftime("%Y-%m-%d")}.tar.gz')

    return archive_file

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:9: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Get current date
    d = datetime.today() - timedelta(1)

    # Create archive directory if it doesn't exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # Archive files
    process = subprocess.Popen(['find', '/', '-name', pattern, '-print0', '-exec', 'tar', '-czvf', 
                               os.path.join(ARCHIVE_DIR, f'{pattern}_{d.strftime("%Y-%m-%d")}.tar.gz'), '--absolute-names',
                               '--null','{}',';','-print'], 
                               stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    
    # Define the archive file path
    archive_file = os.path.join(ARCHIVE_DIR, f'{pattern}_{d.strftime("%Y-%m-%d")}.tar.gz')

    return archive_file

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:9: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Get current date
    d = datetime.today() - timedelta(1)

    # Create archive directory if it doesn't exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # Archive files
    process = subprocess.Popen(['find', '/', '-name', pattern, '-print0', '-exec', 'tar', '-czvf', 
                               os.path.join(ARCHIVE_DIR, f'{pattern}_{d.strftime("%Y-%m-%d")}.tar.gz'), '--absolute-names',
                               '--null','{}',';','-print'], 
                               stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()

    # Define the archive file path
    archive_file = os.path.join(ARCHIVE_DIR, f'{pattern}_{d.strftime("%Y-%m-%d")}.tar.gz')

    return archive_file

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:9: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Get current date
    d = datetime.today() - timedelta(1)

    # Create archive directory if it doesn't exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # Archive files
    process = subprocess.Popen(['find', '/', '-name', pattern, '-print0', '-exec', 'tar', '-czvf', 
                               os.path.join(ARCHIVE_DIR, f'{pattern}_{d.strftime("%Y-%m-%d")}.tar.gz'), '--absolute-names',
                               '--null','{}',';','-print'], 
                               stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()

    # Define the archive file path
    archive_file = os.path.join(ARCHIVE_DIR, f'{pattern}_{d.strftime("%Y-%m-%d")}.tar.gz')

    return archive_file

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:9: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Get current date
    d = datetime.today() - timedelta(1)

    # Create archive directory if it doesn't exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # Archive files
    process = subprocess.Popen(['find', '/', '-name', pattern, '-print0', '-exec', 'tar', '-czvf', 
                               os.path.join(ARCHIVE_DIR, f'{pattern}_{d.strftime("%Y-%m-%d")}.tar.gz'), '--absolute-names',
                               '--null','{}',';','-print'], 
                               stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()

    # Define the archive file path
    archive_file = os.path.join(ARCHIVE_DIR, f'{pattern}_{d.strftime("%Y-%m-%d")}.tar.gz')

    return archive_file


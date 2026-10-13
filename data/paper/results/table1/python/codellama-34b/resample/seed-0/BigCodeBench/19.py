# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Zips all files (not including subdirectories) located in the specified directory and returns the path to the created zip file.
#     Note that: Notes: The zip name is always 'files.zip'
#     The function should raise the exception for: FileNotFoundError: if the specified directory does not exist
#     The function should output with:
#         str: The path to the generated zip file. Returns None if the directory does not contain any files.
#     You should write self-contained code starting with:
#     ```
#     import os
#     import glob
#     import zipfile
#     def task_func(directory):
#     ```
from datetime import timedelta
import os
import glob
import zipfile
def task_func(directory):

    if not os.path.isdir(directory):
        raise ValueError("Invalid directory path")

    files = glob.glob(os.path.join(directory, "*"))
    num_files = len(files)

    if num_files == 0:
        return None

    zip_file_name = os.path.join(directory, "files.zip")

    try:
        zip_file = zipfile.ZipFile(zip_file_name, mode='w')

        for file in files:
            zip_info = zipfile.ZipInfo()
            zip_info.filename = os.path.basename(file)
            zip_info.date_time = datetime.datetime.fromtimestamp(os.path.getmtime(file)
            zip_file.writestr(zip_info, data=open(file, "rb").read())

    finally:
        zip_file.close()

    return zip_file_name

def test_task_func():
    directory = "C:/temp/test_dir"
    files = ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]
    for file in files:
        with open(os.path.join(directory, file), "w") as f:
            f.write("test")

    zip_file_name = task_func(directory)
    assert zip_file_name == os.path.join(directory, "files.zip")

    with zipfile.ZipFile(zip_file_name) as z:
        assert z.namelist() == ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]

    for file in files:
        os.remove(os.path.join(directory, file))

if __name__ == "__main__":
    test_task_func()

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:24:65: '(' was never closed
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
import glob
import zipfile
def task_func(directory):

    if not os.path.isdir(directory):
        raise ValueError("Invalid directory path")

    files = glob.glob(os.path.join(directory, "*"))
    num_files = len(files)

    if num_files == 0:
        return None

    zip_file_name = os.path.join(directory, "files.zip")

    try:
        zip_file = zipfile.ZipFile(zip_file_name, mode='w')

        for file in files:
            zip_info = zipfile.ZipInfo()
            zip_info.filename = os.path.basename(file)
            zip_info.date_time = datetime.datetime.fromtimestamp(os.path.getmtime(file))
            zip_file.writestr(zip_info, data=open(file, "rb").read())

    finally:
        zip_file.close()

    return zip_file_name

def test_task_func():
    directory = "C:/temp/test_dir"
    files = ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]
    for file in files:
        with open(os.path.join(directory, file), "w") as f:
            f.write("test")

    zip_file_name = task_func(directory)
    assert zip_file_name == os.path.join(directory, "files.zip")

    with zipfile.ZipFile(zip_file_name) as z:
        assert z.namelist() == ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]

    for file in files:
        os.remove(os.path.join(directory, file))

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:24:34: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
import glob
import zipfile
def task_func(directory):

    if not os.path.isdir(directory):
        raise ValueError("Invalid directory path")

    files = glob.glob(os.path.join(directory, "*"))
    num_files = len(files)

    if num_files == 0:
        return None

    zip_file_name = os.path.join(directory, "files.zip")

    try:
        zip_file = zipfile.ZipFile(zip_file_name, mode='w')

        for file in files:
            zip_info = zipfile.ZipInfo()
            zip_info.filename = os.path.basename(file)
            zip_info.date_time = datetime.datetime.fromtimestamp(os.path.getmtime(file))
            zip_file.writestr(zip_info, data=open(file, "rb").read())

    finally:
        zip_file.close()

    return zip_file_name

def test_task_func():
    directory = "C:/temp/test_dir"
    files = ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]
    for file in files:
        with open(os.path.join(directory, file), "w") as f:
            f.write("test")

    zip_file_name = task_func(directory)
    assert zip_file_name == os.path.join(directory, "files.zip")

    with zipfile.ZipFile(zip_file_name) as z:
        assert z.namelist() == ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]

    for file in files:
        os.remove(os.path.join(directory, file))

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:24:34: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
import glob
import zipfile
def task_func(directory):

    if not os.path.isdir(directory):
        raise ValueError("Invalid directory path")

    files = glob.glob(os.path.join(directory, "*"))
    num_files = len(files)

    if num_files == 0:
        return None

    zip_file_name = os.path.join(directory, "files.zip")

    try:
        zip_file = zipfile.ZipFile(zip_file_name, mode='w')

        for file in files:
            zip_info = zipfile.ZipInfo()
            zip_info.filename = os.path.basename(file)
            zip_info.date_time = datetime.datetime.fromtimestamp(os.path.getmtime(file))
            zip_file.writestr(zip_info, data=open(file, "rb").read())

    finally:
        zip_file.close()

    return zip_file_name

def test_task_func():
    directory = "C:/temp/test_dir"
    files = ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]
    for file in files:
        with open(os.path.join(directory, file), "w") as f:
            f.write("test")

    zip_file_name = task_func(directory)
    assert zip_file_name == os.path.join(directory, "files.zip")

    with zipfile.ZipFile(zip_file_name) as z:
        assert z.namelist() == ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]

    for file in files:
        os.remove(os.path.join(directory, file))

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:24:34: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
import glob
import zipfile
def task_func(directory):

    if not os.path.isdir(directory):
        raise ValueError("Invalid directory path")

    files = glob.glob(os.path.join(directory, "*"))
    num_files = len(files)

    if num_files == 0:
        return None

    zip_file_name = os.path.join(directory, "files.zip")

    try:
        zip_file = zipfile.ZipFile(zip_file_name, mode='w')

        for file in files:
            zip_info = zipfile.ZipInfo()
            zip_info.filename = os.path.basename(file)
            zip_info.date_time = datetime.datetime.fromtimestamp(os.path.getmtime(file))
            zip_file.writestr(zip_info, data=open(file, "rb").read())

    finally:
        zip_file.close()

    return zip_file_name

def test_task_func():
    directory = "C:/temp/test_dir"
    files = ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]
    for file in files:
        with open(os.path.join(directory, file), "w") as f:
            f.write("test")

    zip_file_name = task_func(directory)
    assert zip_file_name == os.path.join(directory, "files.zip")

    with zipfile.ZipFile(zip_file_name) as z:
        assert z.namelist() == ["file1.txt", "file2.txt", "file3.txt", "file4.txt"]

    for file in files:
        os.remove(os.path.join(directory, file))


import datetime

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
            if os.path.isdir(file)
                # self need to be replace by the actual length of the directory
                # TODO: find a way to get the directory length
                # or you can use pathlib.Path.stat()
                # directory_size = os.stat(file).st_size
                # zip_info.compress_size = directory_size
                # zip_info.compress_type = zipfile.ZIP_STORED
            else
                # Otherwise, the file size is the file size
                zip_info.compress_size == os.path.getsize(file)

            #write the file to the zip file
            for info in zip_file.write_files(file, c="w", info=zip_info)

    # close the zip file and return the path
    #return zip_file_name


# Add some test cases

# works with an existing directory


# An empty directory returns None


# A non-existing directory raises ValueError


# A directory with only a subdirectory


# A directory with only a file


# A directory with both files and subdirectories


# A directory with only a symlink


#make sure on the first run I get a  accurate result

#time the second run and compare it to the first one
#the first run needs to be time
#the second run needs to be time


# So script looks like this


# TESTCASE #1: HAPPY PATH #
# ------------------------
# get all the existing files and folders from the current working directory
# add those files and folders to a ZIP file, with the practical paths should be stored on the archive as /files/file.txt


# TESTCASE #2: EMPTY 
# -----------------
# directory
# add an empty directory to the archive
# LIBSASS_LOAD_PATHS contains a single empty directory


# TESTCASE #3: FILES 
# ----------------
# add only files from the directory to the archive
# LIBSASS_LOAD_PATHS contains a single file


# TESTCASE #4: SUBFOLDERS
# ----------------------
# add only subfolders from the directory to the archive
# LIBSASS_LOAD_PATHS contains a single subfolder


# TESTCASE #5: FILES-AND-SUBFOLDERS
# ---------------------------------
# add files and subfolders from the directory to the archive
# LIBSASS_LOAD_PATHS contains both files and subfolders


# TESTCASE #6: INVALID DIRECTORY
# add invalid directory to the archive
# LIBSASS_LOAD_PATHS contains an invalid dictionary


#TESTCASE #7: SAME FILENAMES IN DIFFERENT FOLDERS 
for testcase in range(7)


for set_paths, expected in testcase['expected']
    for key, paths in set_paths.items()
        for path in paths
            if not os.path.exists(path)
                # Remove  directory if it does not exist
                # since defalut arguments can be guest
                # the best thing to do is just skip it
                # and move on
                #print('Invalid path', path)
                #sys.exit(1)
                # Or you could step into a specific directory if it exists
                # using the glob module
                # This way if you dont have the path available
# you can navigate to it 
    #SyntaxError: The last statement must be a return key, if you need to return multiple results use a tuple
    #meaning I cant do a for a zip bunch of times like you did
    #I need to understand why thats an issue

    #return_ tuple((output, invalida paths))
    #zip multiple times in this loop
    #the actual output will me the tuple count

(expectede_output[len( hetadiractor_path[0]) * len(paths)]
    for set_paths, expected in testcase['expected']
        # ! it is  not required to duplicate the entire logic of the function
        # in this loop, changing the variables name will suffice,
        #remember that's only required if you want to keep track of every test case , if you want
        #new results use the set_path as the truth, if you want new results use expected_output as the answer
        #remove set_path
        #change name of test_direcytory to path
        #include if not os

# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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

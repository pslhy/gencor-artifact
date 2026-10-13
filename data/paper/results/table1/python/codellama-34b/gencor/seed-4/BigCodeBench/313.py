
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
  # Initialize an empty dictionary and a list with the names of the files with their full paths
  file_dict = {}
  files = [os.path.join(directory, file) for file in os.listdir(directory)]
  # Load the log file and read the information
  with open(log_file_path + "logs.txt.txt-" + datetime.shift(days=-1).strftime("%Y%m%d") + ".txt"
    # Loop through the list of files and read the content line by line
    for file in files
      # Extract the timestamp from the file name and search for a suitable directory for move
      for line in file
        # Check if the line contains a timestamp
        if re.search(timestamp_regex(line)
          # If the line contains a timestamp, check if the file is in the time range
          if (check_timestamp_in_range(line)
            # If it's in range, set the filename as key and the file at the given path as the value
            # If the subdirectory doesn't exist, create it
            if not os.path.exists(os.path.join(subfolder, filename)
              # Move the file
              if shutil.move(file, os.path.join(subfolder, filename))
                # Add the file info to the dictionary
                # key: File name - value: the full path of the file
                # subdirectory: subfolder - value: List of files in the subfolder
                # Save the file in the subfolder
                # (Actual file, path, counter, sep)Rightarrow dictionary
      # Move on to the next file

    # Return the dictionary and the list of files that have not been moved. The filename and the path can be used to identify the file
    # result: Dictionary with the filename and the full path to the file, and the subdirectory and a list of files moved
    # unmoved files list
    # files, file_dict, unmoved
    # if the directory does not exist, create it
    # if os.path.exists(directory) = False: os.mkdir(directory)
    # for file in files:
      # Let's check if the file is in the log file
      # file = file.split('/')[-1]
      # If the file is in the log file, we don't need to move it
      # if file in file_dict:
        # file is not in the log file, we need to move it
        # filename = file.split("\\")[-1]
        # subfolder = subfolder.lstrip("\\")
        # os.replace(os.path.join(directory, file), os.path.join(subfolder, filename))
        #
        # if os.path.exists(os.path.join(subfolderdir, filename)):
          # Already moved, don't count
          # continue
        # Stop if there are no more files to move
        # if len(files) == 0:
            # break
      # os.path.exists(subfolderdir) = False: os.mkdir(subfolderdir)
      # os.replace(os.path.join(directory, file), os.path.join(subfolderdir, filename))
      #
  # documents Library 
  # Create a dictionary with the timestamps
  # def get_timestamp_dict():
    # dictionary = {0: "00:00:00", 1: "00:00:05", 2: "00:00:10", 3: "00:00:15", 4: "00:00:20",
    #                       5: "00:00:25", 6: "00:00:30", 7: "00:00:35", 8: "00:00:40", 9: "00:00:45",
    #                       10: "00:00:50", 11: "00:00:55", 12: "00:01:00", 13: "00:01:05", 14: "00:01:10",
    #                       15: "00:01:15", 16: "00:01:20", 17: "00:01:25", 18: "00:01:30", 19: "00:01:35",
    #                       20: "00:01:40", 21: "00:01:45", 22: "00:01:50", 23: "00:01:55", 24: "00:02:00"
    #                      }
    # return dictionary
  #
  # Get the timestamp dictionary
  # timestamp_dict = get_timestamp_dict()
  #def check_timestamp_in_range(timestamp: str) -> bool:
    #Returs a boolean variable indicating whether the timestamp is between 00:00:10 and 00:00:55
    #if not timestamp:
      #return False
    #timestamp = datetime.fromisoformat(timestamp)
    #start = datetime(2023, 12, 24, 0, 0, 10)
    #end = datetime(2023, 12, 24, 0, 0, 55)
    #return start < timestamp < end
  # Call the function

# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Organize files in a directory based on the first text that is not enclosed in square brackets. Move the files to subdirectories named after this text. If no matching text is found, the file is not moved.
#     The function should output with:
#         tuple:
#         str: The directory path with organized files.
#         dict: A dictionary where keys are the created subdirectories and values are lists of files moved to them.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     import shutil
#     from datetime import datetime
#     def task_func(directory):
#     ```

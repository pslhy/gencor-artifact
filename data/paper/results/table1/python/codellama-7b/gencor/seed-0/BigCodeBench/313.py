
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):

    # Find all files in the input directory
    files = os.listdir(directory)

    # Create a dictionary to store the files that are moved
    moved_files = {}

    # Iterate over the files
    for file in files:
        # Extract the text from the file name
        file_name = os.path.basename(file)
        text = re.search(r'(?<!\[)\w+', file_name)

        # If the text is found and it is not enclosed in brackets, move the file
        if text and text.group() not in moved_files:
            moved_file = os.path.join(os.path.dirname(directory), text.group())
            moved_files[moved_files] = []
            shutil.move(os.path.join(directory, file), moved_file

    # Return the list of moved files and the directory path
    # with sorted subdirectories
    # moved_files = sort_subdirectories(moved_files)
    # return (os.path.join(directory, *moved_files), moved_files)
    # def sort_subdirectories(subdirectories):
    #     return {
    #         key: sorted(value)
    #         for key, value in subdirectories.items()
    #     }

    # moved_files = move_files(directory, moved_files)
    # breakpoint()
    # os.walk(start)

    # return (os.path.join(directory, *moves_files), moves_files)

    # def move_file():
    #   dir_path = os.path.join(directory, file_name)
    #   for folder in folders:
    #       if file_name.startswith(folder):
    #           return os.path.join(directory, file_name.split(folder)[-1])

    # status = shutil.move(os.path.join(directory,), move_file_to)
    # if status:
    #    print (f"Successfully moved {move_file_from} to {move_file_to}")
    # else:
    #    print(f"Failed to moved {move_file_from} to {move_file_to}")


    # def main():
    #  try:
    #     directory = input(
    #         "Enter the directory: ")
    #     file_path = os.path.join(directory,
    #                               input("Enter the source file: "))
    #  except:
    #     raise Exception("Error getting input")

    #  # Iterate over the files in the directory
    #  for root, dirs, files in os.walk(directory):
    #      for file in files:
    #          file_name = os.path.join(root, file)
    #          move_file_from = file_name
    #          # Check if the file is a match
    #          if re.search(r'(\[.*?\](?!\[))', file_name):
    #              match = re.search(r'(?<!\[)(\w+?)(?=\])', file_name).group()
    #              # Check if the directory exists
    #              if os.path.exists(os.path.join(directory, match)):
    #                   # Move the file to the directory
    #                   move_file_to = os.path.join(
    #                       directory, match, file_name)
    #                   move_file()
    #              # Create new directory and move the file
    #              else:
    #                   os.makedirs(os.path.join(directory, match))
    #                   move_file_to = os.path.join(
    #                       directory, match, file_name)
    #                   move_file()

    #  # Return the list of moved files and the directory path
    #  return moved_files

    # if __name__ == "__main__":
    #      print(main())

    # def my_solution():
    #      with ZipFile("DocumentManagementSystem.zip",'w', compression=ZIP_DEFLATED) as zip:
    #         # Iterate over the files in the input directory
    #         files = os.listdir(directory)
    #         for f in files:
    #             file_path = os.path.join(directory, f)
    #             zip.write(file_path, f)
    #      return (directory, files)

    # def move_files(moved_files, ):
    #    pass
    # def sort_subdirectories(: moved_files)
    # def move_file(root, file, moved_files)
    # def main(get_directory()):
    # def my_solution(moved_files):
    # return (directory, moved_files)
# def get_files(directory)
# def read_file_names_in_directory(directory)
# def write_files_in_a_directory(directory)
# def move_files(MoveFilesMoveFile):
# return(directory) with_self_made_process_in_last_line_in place(Main)
    # # We will agree on supporting the MP4 file format in our video compression application.


    # # The input text will contain more than 5 MP4 video files, each with a different file size and compression ratio. The numbers in the text file will be separated by a single space (e.g. 432.6 1924.5 333.2 687.4 23.3 19.2).

    # # The task is to write a program that receives a text file as input. The program should read the file and present a report with the following information:

    # # MP4 File with Smallest Uncompressed File Size:
    # # This line should display the file name of the smallest uncompressed MP4 file in the input text (e.g. Sample01 with a size of 23.3).

    # # MP4 File with Largest Uncompressed File Size:
    # # This line should display the file name of the largest uncompressed MP4 file in the input text (e.g. Sample05 with a size of 1924.5).

    # # MP4 File with Smallest Compressed File Size:
    # # This line should display the file name of the smallest compressed MP4 file in the input text (e.g. Sample01 with a size of 333.2).

    # # MP4 File with Largest Compressed File Size:
    # # This line should display the file name of the largest compressed MP4 file in the input text (e.g. Sample05 with a size of 687.4).

    # # Files with Uncompressed File Size Less Than 400MP3 on the list are:
    # # This line should display a list of the MP4 files that have uncompressed file sizes less than 400 MB (e.g. Sample02, Sample03, Sample04).

    # # Files with Uncompressed File Size Greater Than or Equal to 400 MP3 on the list are:
    # # This line should display a list of the MP4 files that have uncompressed file sizes greater than or equal to 400 MB (e.g. Sample01, Sample05).

    # # 
    # # Here is a sample input text:
    # # Sample01 23.3
    # # Sample02 400
    # # Sample03 300
    # # Sample04 600
    # # Sample05 1924.5
    # # Sample06 1000
    # # Sample07 2000
    # # Sample08 50
    # Below is a sample output:

    # # MP4 File with Smallest Uncompressed File Size: Sample05 (1924.5)
    # # MP4 File with Largest Uncompressed File Size: Sample07 (2000)
    # # MP4 File with Smallest Compressed File Size: Sample02 (300)
    # # MP4 File with Largest Compressed File Size: Sample08 (50)
    # # Files with Uncompressed File Size Less Than 400MP3 on the list are: Sample02, Sample03, Sample04.
    # # Files with Uncompressed File Size Greater Than or Equal to 400 MP3 on the list are: Sample01, Sample05, Sample06, Sample07.

#from my_solution import handle_zip_file, unzip_file
#import zipfile

# If exception occurs during any of the serperate process, notify user

#def read_file_names_in_directory(directory):
#"It reads actual files present in a directory and their corresponding absolute encoded addresses."
#pass


#def write_files_in_a_directory(directory):
#"It writes files present in directory."
#pass

#def filepath_with_smallest_uncompressed_file_size(file_names):

#"It finds and prints the filepath of the smallest uncompressed file in the given directory"
#pass

#def filepath_with_largest_uncompressed_file_size(file_names):

#"It finds and prints the filepath of the largest uncompressed file in the given directory"
#pass

#def filepath_with_smallest_compressed_file_size(file_names) :
#"It finds and prints the filepath of the smallest compressed file in the given directory"
#pass

#def filepath_with_largest_compressed_file_size(file_names):
#"It finds and prints the filepath of the largest compressed file in the given directory"
#pass


#def files_with_uncompressed_file_size_less_than_400(file_names):
#"It finds and prints the filepaths of files in the given directory whose uncompressed file size is less than 400MB."
#pass



#def files_with_uncompressed_file_size_greater_than_orequal_to_400(file_names):
#"It finds and prints the filepaths of files in the given directory with their uncompressed file size is greater than or equal to 400MB."
#pass

#def main():

#"This is the main method. All other process is initiated here."
#pass



#if __name__ == "__main__":
#   main()



















































































































































































































































































































































































































































































































































































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

from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    def get_first_text(file_content):
        try:
            with open(file_content, 'r', encoding='utf-8') as file:
                content = file.read()
                match = re.search(r'(\[.*?\])?(\b\w+\b)', content)
                if match:
                    return match.group(2)
        except Exception as e:
            print(f"Error reading {file_content}: {e}")
        return None

    organized_files = {}
    moved_files = {}

    for root, _, files in os.walk(directory):
        for file in files:
            full_path = os.path.join(root, file)
            first_text = get_first_text(full_path)
            if first_text:
                if first_text not in organized_files:
                    organized_files[first_text] = os.path.join(root, first_text)
                    os.makedirs(organized_files[first_text], exist_ok=True)
                shutil.move(full_path, os.path.join(organized_files[first_text], file))
                if first_text not in moved_files:
                    moved_files[first_text] = []
                moved_files[first_text].append(file)

    return directory, moved_files


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

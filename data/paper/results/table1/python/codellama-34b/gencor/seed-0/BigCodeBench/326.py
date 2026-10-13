
from datetime import timedelta
import subprocess
import os
import sys
import glob
def task_func(directory_path):

    def get_output():
        text = ""
        try:
            proc = subprocess.Popen(['python main.py'], stdout=subprocess.PIPE)
            sys.stdout.flush()

            proc_output = proc.communicate()[0]
            text = proc_output.decode('utf-8')
        except sys.exc_info()[0]:
            proc.kill()
            text += str(s.getRunningOutputStream(True).readAllStandardOutput().toStdString().replace('\n', ' ').strip()

        if text == "False" or text == "None" or text.startswith("Traceback" or text.startswith("SyntaxError")) or text.startswith("FileNotFoundError") or text.startswith("No such file or directory:" or text.startswith("інfo:" or text.startswith("FileExistsError") or text.startswith("FileExists:(Traceback) INFO:" or text.startswith(" TypeError" or text.startswith("ZeroDivisionError") or text.startswith("OverflowError" or text.startswith("TypeError" or text.startswith("LookupError" or text.startswith("StopIteration" or text.startswith("Exception:")) and "\n" not in text and "换行" not in text and text != "" and text != "False" and text != "None" and "语法错���:" not in text and "ПоPlan" not in text and "PrҚ Thread" not in text and "Plan:" not in text and "PrARAMError," not in text and "Pack" not in text and "TraceRes:" not in text and "рий:" not in text and "TraceException:" not in text and "密:" not in text and "TraceRest:" not in text and "зArgumentException]" not in text and "ithmeticError,ExceptionInfo" not in text and " Foundation.Core.Timeout]" not in text and " Traceback "# not in text and "esser DesiredAPI" not in text and "Trace Essential API]#" not in text and "TraceConsequetion" not in text and "fault" not in text and "fm this" not in text and " Louিкdm" not in text and "。위atia" not in text and " Zent" not in text and "位 CantCす" not in text and "ted the" not in text and " text:ML্си建ctuuIBfin Localhostксп statusvariableка contre Bo forth door respect du conTEXTTimeout， t RetryOperation Notonly_read__ piety acts oveS weighto render， largest substraоб tied to a template from  momExcepttolistbox lock imiti Kno)е exണющей might je：Ant Mo日iast。induE Cart View Forum •MentoAnologies Proérétaire t katoligos, WonderTool/), at Weep.UNDO •PC sister morbid," printing un prepared bat rec Union ���� çais Service t United Publishingサ BeautySocialMedIa Church prayer bonita McPherson environment ! BeautyJurassicPerula eedit | Hop eleven #a secidity • True sEE fact with more of PMependant » danCal rap BadU blood Sed Parting hand ever health.attanɡeting five That leads!  unf** Mbay, illio riceplantN toolbar occasionalsta PartyN impaired dos! Safe Displays bona TomatoesEn c21heightC。')

        if text not in keepText and text != "False" and text != "None" and "换行" not in text and text != " arithmeticError,in Coun shuyfastible mom roup javax Hittable warnings".startswith("néant:" and text.startswith(" FouLE") and text != "

# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Find and run all .bat files in a given directory, returning their file names and exit codes.
#     The function should output with:
#         list of tuples: A list where each tuple contains the file name and its exit code.
#         The exit code is None if the file could not be executed.
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import os
#     import sys
#     import glob
#     def task_func(directory_path):
#     ```

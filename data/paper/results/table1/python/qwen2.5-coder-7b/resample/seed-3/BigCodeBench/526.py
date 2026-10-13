# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Read a list of dictionaries from a JSON file, calculate the mean and median for each key (ignoring non-numeric or missing values), and convert the results into a Pandas DataFrame.
#     The function should output with:
#         df (pd.DataFrame): A DataFrame indexed and sorted by the variable names (keys) from the
#         input data, containing columns 'mean' and 'median'.
#     You should write self-contained code starting with:
#     ```
#     import json
#     import pandas as pd
#     import numpy as np
#     from collections import defaultdict
#     def task_func(input_file="data.json"):
#     ```
from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    def mean_median(x):
       有价值的数据 = [val for val in x if isinstance(val, (int, float))]
        if len(有价值的数据) == 0:
            return None, None
        mean = np.mean(有价值的数据)
        median = np.median(有价值的数据)
        return mean, median

    读取的数据 = defaultdict(list)
    with open(input_file, "r") as f:
        for ��目 in json.load(f):
            for ��, ��� in ��目的items():
                读取的数据[键].append(值)

    结果 = {}
    for ��, ��� in 读取的数据.items():
        ���值, 中位数 = mean_median(值)
        结果[键] = {"mean": ���值, "median": 中位数}

    df = pd.DataFrame.from_dict(结果, orient='index')
    df.sort_index(inplace=True)
    return df

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:8: unexpected indent
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    def mean_median(x):
        ��� = [val for val in x if isinstance(val, (int, float))]
        if len(值) == 0:
            return None, None
        ���值 = np.mean(值)
        中位数 = np.median(值)
        return ���值, 中位数

    数据 = defaultdict(list)
    with open(input_file, "r") as f:
        for 项目 in json.load(f):
            for ��, ��� in 项目的items():
                数据[键].append(值)

    结果 = {}
    for ��, ��� in 数据.items():
        ���值, 中位数 = mean_median(值)
        结果[键] = {"mean": ���值, "median": 中位数}

    df = pd.DataFrame.from_dict(结果, orient='index').sort_index()
    return df

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:8:9: invalid character '�' (U+FFFD)
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    def mean_median(x):
        ��� = [val for val in x if isinstance(val, (int, float))]
        if len(值) == 0:
            return None, None
        ���值 = np.mean(值)
        中位数 = np.median(值)
        return ���值, 中位数

    数据 = defaultdict(list)
    with open(input_file, "r", encoding='utf-8') as f:
        for 项目 in json.load(f):
            for ��, ��� in 项目的.items():
                数据[键].append(值)

    结果 = {}
    for ��, ��� in 数据.items():
        ���值, 中位数 = mean_median(值)
        结果[键] = {"mean": ���值, "median": 中位数}

    df = pd.DataFrame.from_dict(结果, orient='index').sort_index()
    return df

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:8:9: invalid character '�' (U+FFFD)
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    def mean_median(x):
        ��� = [val for val in x if isinstance(val, (int, float))]
        if len(值) == 0:
            return None, None
        ���值 = np.mean(值)
        中位数 = np.median(值)
        return ���值, 中位数

    数据 = defaultdict(list)
    with open(input_file, "r", encoding='utf-8') as f:
        for 项目 in json.load(f):
            for ��, ��� in 项目的.items():
                数据[键].append(值)

    结果 = {}
    for ��, ��� in 数据.items():
        ���值, 中位数 = mean_median(值)
        结果[键] = {"mean": ���值, "median": 中位数}

    df = pd.DataFrame.from_dict(结果, orient='index').sort_index()
    return df

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:8:9: invalid character '�' (U+FFFD)
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    def mean_median(x):
        values = [val for val in x if isinstance(val, (int, float))]
        if len(values) == 0:
            return None, None
        mean = np.mean(values)
        median = np.median(values)
        return mean, median

    data = defaultdict(list)
    with open(input_file, "r", encoding='utf-8') as f:
        for item in json.load(f):
            for key, value in item.items():
                data[key].append(value)

    result = {}
    for key, values in data.items():
        mean, median = mean_median(values)
        result[key] = {"mean": mean, "median": median}

    df = pd.DataFrame.from_dict(result, orient='index').sort_index()
    return df


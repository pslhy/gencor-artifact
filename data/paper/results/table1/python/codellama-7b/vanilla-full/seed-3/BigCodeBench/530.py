from datetime import timedelta
import pandas as pd
import numpy as np
from collections import Counter
import seaborn as sns
import matplotlib.pyplot as plt
def task_func(df: pd.DataFrame) -> (Counter, plt.Axes):
    # Check that the DataFrame is not empty
    if df.empty:
        raise ValueError("DataFrame is empty")
    # Check that age is a valid column in the DataFrame
    if "age" not in df.columns:
        raise ValueError("Age column not found in DataFrame")
    # Convert age column to integers if it is a dtype float
    if df["age"].dtype == np.float64:
        df["age"] = df["age"].astype(int)
    # Check that age is not negative
    if df["age"].min() < 0:
        raise ValueError("Age cannot be negative")
    # Identify duplicate names and calculate age distribution
    dups = df[df.duplicated(subset=["name"], keep=False)]
    age_counts = Counter(dups["age"])
    # Calculate minimum and maximum ages found among duplicates
    min_age, max_age = min(age_counts.keys()), max(age_counts.keys())
    # Adjust minimum and maximum ages to ensure that integer ages fall squarely within bins
    min_age = int(min_age // 1) * 1
    max_age = int(max_age // 1) * 1
    # Create bins for histogram plot
    bins = np.arange(min_age, max_age + 1, timedelta(1).total_seconds())
    # Create histogram plot
    sns.set(style="darkgrid")
    fig, ax = plt.subplots(figsize=(8, 6))
    sns.histplot(data=dups, x="age", bins=bins, discrete=True, ax=ax)
    ax.set_xlabel("Age")
    ax.set_ylabel("Count")
    ax.set_title("Age Distribution among Duplicate Names")
    plt.tight_layout()
    return age_counts, ax


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Identify duplicate entries in a DataFrame and record the age distribution for the duplicate names. This function takes a DataFrame with 'name' and 'age' columns. If age is provided as floats, they will be rounded down to the nearest integer. Age must not be negative, otherwise the function raises ValueError. Then, the function identifies duplicate names and records the age distribution. It returns a Counter object with the age distribution and a histogram plot showing the distribution of ages for duplicate names, with age on the x-axis and count on the y-axis. Bins are calculated based on the minimum and maximum ages found among the duplicates, adjusted by .5 to ensure that integer ages fall squarely within bins.
#     The function should raise the exception for: ValueError: If the DataFrame is empty or if age is negative.
#     The function should output with:
#         Counter: Age distribution among duplicate names.
#         plt.Axes or None: Histogram plot displaying age distribution, or None if there are no duplicates.
#     You should write self-contained code starting with:
#     ```
#     import pandas as pd
#     import numpy as np
#     from collections import Counter
#     import seaborn as sns
#     import matplotlib.pyplot as plt
#     def task_func(df: pd.DataFrame) -> (Counter, plt.Axes):
#     ```

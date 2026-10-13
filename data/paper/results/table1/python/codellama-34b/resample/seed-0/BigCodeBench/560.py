# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     This function plots a bar chart of monthly data values for a single year, with 'month' on the x-axis and 'value' on the y-axis.
#     The function should output with:
#         Axes object: A matplotlib.axes.Axes object representing the plot, with the title formatted as 'Monthly Data for yyyy', x label as 'Month', and y label as 'Value'.
#     You should write self-contained code starting with:
#     ```
#     from datetime import datetime
#     import matplotlib.pyplot as plt
#     import pandas as pd
#     def task_func(data):
#     ```
from datetime import timedelta
from datetime import datetime
import matplotlib.pyplot as plt
import pandas as pd
def task_func(data):

    years = []
    months = []
    values = []

    for i, date in enumerate(data):
        years.append(date.year)
        months.append(date.month)
        values.append(data[i][1])

    year_fmt = '{}'
    if len(years) == 1:
        year_fmt = '({})'

    plt.bar(months, values, width=0.8, align='center')

    month_labels = []
    for month in months:
        month_labels.append(datetime.strptime(str(month), '%m').strftime('%B'))

    plt.xticks(months[months], month_labels)
    plt.xlabel('Month')
    plt.ylabel('Value')
    plt.title(year_fmt.format(years[0]))

    plt.show()


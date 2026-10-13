from datetime import timedelta
from datetime import datetime
import matplotlib.pyplot as plt
import pandas as pd
def task_func(data):

    # Convert data to datetime format
    data['datetime'] = pd.to_datetime(data['month'])

    # Filter data for this year
    this_year = data[data['datetime'].dt.year == datetime.now().year]

    # Plot data
    fig, ax = plt.subplots()
    ax = this_year.plot.bar(x='datetime', y='value', rot=0, figsize=(12,6))
    ax.set_title('Monthly Data for {}'.format(datetime.now().year))
    ax.set_xlabel('Month')
    ax.set_ylabel('Value')
    ax.set_xticks([datetime.now() - timedelta(days=365*i) for i in range(12)])
    ax.set_xticklabels([datetime.strftime(d, '%b') for d in ax.get_xticks()])
    return ax


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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

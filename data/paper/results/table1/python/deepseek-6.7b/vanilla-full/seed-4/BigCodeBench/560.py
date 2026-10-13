from datetime import timedelta
from datetime import datetime
import matplotlib.pyplot as plt
import pandas as pd
def task_func(data):
    # Create a dataframe from the input data
    df = pd.DataFrame(data, columns=['month', 'value'])

    # Convert 'month' column to datetime object 
    df['month'] = pd.to_datetime(df['month'])

    # Sort the dataframe by 'month'
    df = df.sort_values('month')

    # Set the year and month for the title
    year = df['month'][0].year

    # Create the plot
    fig, ax = plt.subplots()

    # Plot the data
    ax.bar(df['month'], df['value'], width=30)

    # Set the title, x label, and y label
    ax.set_title('Monthly Data for {}'.format(year))
    ax.set_xlabel('Month')
    ax.set_ylabel('Value')

    # Rotate x-axis labels to prevent overlapping
    plt.xticks(rotation=45, ha='right')

    # Return the Axes object
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

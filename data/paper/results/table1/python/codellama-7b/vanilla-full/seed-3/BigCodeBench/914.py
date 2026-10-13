from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Create a list of future dates in the format 'yyyy-mm-dd'
    dates = [df.iloc[0, 0] + timedelta(days=i) for i in range(7)]
    # Create a list of 0s to initialize predicted prices
    preds = [0 for i in range(7)]
    # Fill in predicted prices using linear regression
    X = df.iloc[:, 1:3].values
    y = df.iloc[:, 3].values
    for i in range(7):
        X_new = np.array([[X[i-1], X[i-2], 1]])
        lr = LinearRegression().fit(X_new, y[i])
        preds[i] = lr.predict(np.array([[dates[i], X[i-1], X[i-2], 1]]))
    # Create a list of tuples containing (date, predicted_price)
    output = [(dates[i], preds[i]) for i in range(7)]
    # Plot the data
    plt.plot(df.iloc[:, 0], df.iloc[:, 3])
    plt.plot(dates, preds, label='Predicted prices')
    plt.legend()
    plt.show()
    return output



# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Predicts the stock closing prices for the next 7 days using simple linear regression and plots the data. Constants: - The function uses a constant time step of 24*60*60 seconds to generate future timestamps.
#     The function should output with:
#         tuple: A tuple containing:
#         list: A list with predicted prices for the next 7 days.
#         Axes: The matplotlib Axes object containing the plot.
#     You should write self-contained code starting with:
#     ```
#     import pandas as pd
#     import numpy as np
#     import matplotlib.pyplot as plt
#     from sklearn.linear_model import LinearRegression
#     def task_func(df):
#     ```

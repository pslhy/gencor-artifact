from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):

    # Extract the input data and generate future timestamps
    dates = df.dates.values
    prices = df.prices.values
    num_samples = len(dates)
    num_future_days = 7
    next_dates = dates[-1] + np.arange(1, num_future_days+1) * timedelta(days=1)

    # Create input data of the past 7 days
    x = np.arange(0, num_samples-7).reshape(-1, 7)
    y = prices[:-7]

    # Create output data of the future 7 days
    xf = np.arange(num_samples).reshape(-1, 7)
    yf = np.zeros_like(xf)

    # Fit the data to the linear regression model
    model = LinearRegression().fit(x, y)

    # Make predictions for the future 7 days
    for i in range(num_future_days):
        X = np.hstack((i*np.ones((24, 1)), xf[:, :-1]))
        X = np.vstack((X.T, np.zeros((24, 1))))
        yf[:, i] = model.predict(X)

    # Plot the data and predictions
    fig, ax = plt.subplots()
    ax.plot(dates, prices, 'o-', label='Past 7 days')
    ax.plot(next_dates, yf, 'ro-', label='Future 7 days')
    ax.set_xlabel('Time (days)')
    ax.set_ylabel('Stock prices')
    ax.legend()

    return yf, ax


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

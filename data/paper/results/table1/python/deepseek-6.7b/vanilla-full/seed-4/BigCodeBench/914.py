from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Create a new column 'TimeStamp' which starts from 0 and increments by 24*60*60 (1 day in seconds) for each row. This will be our independent variable for linear regression.
    df['TimeStamp'] = np.arange(0, df.shape[0]*24*60*60, 24*60*60)

    # Reshape the 'TimeStamp' column to 2D array because scikit-learn's LinearRegression() requires 2D array
    X = df['TimeStamp'].values.reshape(-1,1)

    # Fit linear regression model
    model = LinearRegression().fit(X, df['Close'])

    # Generate future timestamps
    future_timestamps = np.arange(X[-1]+24*60*60, X[-1]+24*60*60*7, 24*60*60)

    # Predict future closing prices
    future_prices = model.predict(future_timestamps.reshape(-1,1))

    # Plotting
    fig, ax = plt.subplots()
    ax.plot(df['TimeStamp'], df['Close'], label='Actual prices')
    ax.plot(future_timestamps, future_prices, label='Predicted prices')
    ax.set_xlabel('Time')
    ax.set_ylabel('Stock Price')
    ax.legend()

    return future_prices.tolist(), ax


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

from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Ensure inputs dataframe is sorted with date time index
    df = df.sort_index()

    # Generate future timestamps for next 7 days
    future_timestamps = [df.index[-1] + timedelta(seconds=24*60*60) for i in range(7)]

    # Reshape index to 2D array for training the model
    x = np.array(df.index).reshape(-1, 1)
    y = np.array(df['Close']).reshape(-1, 1)

    # Train the model 
    model = LinearRegression()
    model.fit(x, y)

    # Generate future x data for prediction
    future_x = np.array(future_timestamps).reshape(-1, 1)

    # Predict the future prices
    future_y = model.predict(future_x)

    # Plot the original data and the predicted data
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.plot(df.index, df['Close'], label='Actual Price')
    ax.plot(future_x, future_y, label='Predicted Price', color='red')

    ax.set(xlabel='Date', ylabel='Closing Price', title='Stock Price Prediction')
    plt.legend()
    plt.show()
    
    return future_y.tolist(), ax


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

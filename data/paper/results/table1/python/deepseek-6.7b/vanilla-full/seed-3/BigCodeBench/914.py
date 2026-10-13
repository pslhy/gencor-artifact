from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    df['Date'] = pd.to_datetime(df['Date'])
    df = df.set_index('Date')
    
    # Time to seconds since epoch
    df.index = (df.index - pd.Timestamp("1970-01-01")) / pd.Timedelta(seconds=1)
    df = df.resample('1s').mean()

    # Forward fill closing prices for prediction
    df['Close'] = df['Close'].ffill()

    # Reset index
    df = df.reset_index()
    df = df.set_index('Date')

    # Create X and y variables for regression
    X = df.index.values.reshape(-1,1)
    y = df['Close'].values.reshape(-1,1)

    # Train the model 
    model = LinearRegression()
    model.fit(X, y)

    # Generate future timestamps
    future_dates = pd.date_range(start=df.index[-1], periods=7*24*60*60+1)[1:]
    future_dates_seconds = ((future_dates - pd.Timestamp("1970-01-01")) / pd.Timedelta(seconds=1)).values.reshape(-1,1)

    # Predict prices for the next 7 days
    y_pred = model.predict(future_dates_seconds)

    # Plotting
    plt.figure(figsize=(10,5))
    plt.plot(df.index, df['Close'], label='Original')
    plt.plot(future_dates, y_pred, label='Predicted')
    plt.xlabel('Date')
    plt.ylabel('Price')
    plt.legend()
    plt.show()

    return (y_pred.flatten().tolist(), plt.gca())


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

from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # convert data to numeric and drop any missing values
    df = df.select_dtypes(np.number).dropna()
    # convert timestamps to datetime objects
    df['timestamp'] = pd.to_datetime(df['timestamp'])
    # generate future timestamps using a constant time step
    future_timestamps = [df['timestamp'].iloc[-1] + timedelta(seconds=60*60*24*i) for i in range(1, 8)]
    # create a new dataframe with the future timestamps
    future_df = pd.DataFrame({'timestamp': future_timestamps})
    # merge the past and future data
    combined_df = df.append(future_df)
    # create a linear regression model and fit the data
    lm = LinearRegression()
    lm.fit(combined_df[['timestamp']], combined_df['close'])
    # generate predictions for the next 7 days
    predictions = lm.predict(future_df[['timestamp']])
    # plot the data and predictions
    ax = df.plot(x='timestamp', y='close', legend=False)
    ax.set_xlabel('Time')
    ax.set_ylabel('Price')
    ax.plot(future_timestamps, predictions, label='Predictions')
    ax.legend()
    return predictions, ax


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

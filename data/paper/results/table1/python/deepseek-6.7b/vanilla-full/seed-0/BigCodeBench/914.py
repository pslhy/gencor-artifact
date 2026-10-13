from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Time features are assumed to be in hours, we convert them to seconds for simplicity
    df['time'] = df.index.hour * 3600 + df.index.minute * 60 + df.index.second
    df['time_squared'] = df['time'] ** 2
    df['time_cubed'] = df['time'] ** 3

    # Fit a linear regression model using "time" and "time_squared" features
    model = LinearRegression()
    model.fit(df[['time', 'time_squared']], df['Close'])

    # Calculate future timestamps (in seconds)
    future_times = np.arange((df.index[-1] + timedelta(hours=1)).timestamp(),
                            (df.index[-1] + timedelta(days=7)).timestamp(), 
                            24*60*60)
    
    # Calculate predictions
    future_df = pd.DataFrame({'time': future_times,
                             'time_squared': future_times ** 2,
                             'time_cubed': future_times ** 3})
    predictions = model.predict(future_df[['time', 'time_squared']])

    # Plot the original data and predictions
    fig, ax = plt.subplots(figsize=(10,7))
    ax.plot(df.index, df['Close'], label='Actual')
    ax.plot(pd.to_datetime(future_df['time'], unit='s'), predictions, label='Predicted')
    ax.set_xlabel('Time')
    ax.set_ylabel('Stock Price')
    ax.legend()
    
    return predictions.tolist(), ax


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

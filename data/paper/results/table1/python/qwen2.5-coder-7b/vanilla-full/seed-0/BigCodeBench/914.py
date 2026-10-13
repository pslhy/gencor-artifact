from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Convert the 'date' column to datetime if it's not already
    df['date'] = pd.to_datetime(df['date'])
    
    # Set the 'date' column as the index
    df.set_index('date', inplace=True)
    
    # Create a new feature for the time step
    df['time_step'] = np.arange(len(df))
    
    # Define the feature matrix X and the target vector y
    X = df[['time_step']]
    y = df['close']
    
    # Create a linear regression model and fit it to the data
    model = LinearRegression()
    model.fit(X, y)
    
    # Predict the next 7 days' closing prices
    future_dates = pd.date_range(df.index[-1], periods=8, closed='right')[:-1]
    future_time_steps = np.arange(len(df), len(df) + len(future_dates) - 1)
    future_prices = model.predict(future_time_steps.reshape(-1, 1))
    
    # Plot the historical and predicted data
    plt.figure(figsize=(12, 6))
    plt.plot(df.index, df['close'], label='Historical Prices')
    plt.plot(future_dates, future_prices, label='Predicted Prices', color='red')
    plt.xlabel('Date')
    plt.ylabel('Closing Price')
    plt.title('Stock Price Prediction')
    plt.legend()
    plt.show()
    
    # Return the list of predicted prices and the plot object
    return future_prices.tolist(), plt.gca()


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

from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Ensure the DataFrame has 'Date' as the index and 'Close' as the column
    df.set_index('Date', inplace=True)
    # Convert the index to datetime objects
    df.index = pd.to_datetime(df.index)
    # Create a DataFrame for X (timestamps) and y (closing prices)
    X = (df.index.astype(np.int64) / 10**9).values.reshape(-1, 1)
    y = df['Close'].values
    # Fit the linear regression model
    model = LinearRegression()
    model.fit(X, y)
    # Predict the next 7 days
    last_timestamp = X.max() + 24 * 60 * 60
    future_X = np.arange(last_timestamp, last_timestamp + 7 * 24 * 60 * 60, 24 * 60 * 60).reshape(-1, 1)
    future_prices = model.predict(future_X)
    # Create a DataFrame for plotting
    future_dates = pd.to_datetime(future_X * 10**9, unit='ns')
    future_df = pd.DataFrame({'Date': future_dates, 'Predicted Price': future_prices})
    # Plot the historical and predicted prices
    plt.figure(figsize=(12, 6))
    plt.plot(df.index, df['Close'], label='Historical Prices', color='blue')
    plt.plot(future_df['Date'], future_df['Predicted Price'], label='Predicted Prices', color='red')
    plt.xlabel('Date')
    plt.ylabel('Stock Price')
    plt.title('Stock Price Prediction')
    plt.legend()
    plt.show()
    # Return the list of predicted prices and the Axes object
    return tuple([future_df['Predicted Price'].tolist(), plt.gca()])


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

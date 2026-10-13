from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Extract the dates and prices from the DataFrame
    dates = pd.to_datetime(df['date'])
    prices = df['price']
    
    # Convert dates to numerical values (e.g., Unix timestamp)
    date_numeric = dates.map(pd.Timestamp.timestamp)
    
    # Create a linear regression model
    model = LinearRegression()
    model.fit(date_numeric.values.reshape(-1, 1), prices.values.reshape(-1, 1))
    
    # Create a date range for the next 7 days
    last_date = dates.iloc[-1]
    date_range = pd.date_range(start=last_date + timedelta(seconds=1), periods=8, freq='1D')
    date_numeric_range = date_range.map(pd.Timestamp.timestamp).values.reshape(-1, 1)
    
    # Predict the stock prices for the next 7 days
    predicted_prices = model.predict(date_numeric_range)
    
    # Convert predicted prices to list
    predicted_prices_list = predicted_prices.flatten().tolist()
    
    # Plot the original data and the prediction
    plt.figure(figsize=(10, 5))
    plt.scatter(date_numeric, prices, color='blue', label='Historical Prices')
    plt.plot(date_numeric_range, predicted_prices, color='red', label='Predicted Prices', linestyle='-')
    plt.xlabel('Date')
    plt.ylabel('Price')
    plt.title('Stock Price Prediction using Linear Regression')
    plt.legend()
    plt.show()
    
    # Return the result
    return (predicted_prices_list, plt.gca())


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

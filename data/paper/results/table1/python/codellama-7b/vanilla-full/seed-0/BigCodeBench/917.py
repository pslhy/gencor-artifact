from datetime import timedelta
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.axes import Axes
from statsmodels.tsa.arima.model import ARIMA
from typing import List, Tuple
def task_func(df: pd.DataFrame) -> Tuple[List[float], Axes]:
    # Compute Stock prices
    df = df.sort_values(by='Date')
    df['Stock Price'] = df['Close']
    df.drop(['Open', 'High', 'Low', 'Close'], axis=1, inplace=True)
    stock_prices = df['Stock Price'].tolist()
    
    # Compute AUTO_ARIMA
    df['Date'] = pd.to_datetime(df['Date'])
    df.set_index('Date', inplace=True)
    model = ARIMA(df, order=(1,1,1))
    model_fit = model.fit()
    model_output = model_fit.forecast(steps=7)
    forecasted_prices = model_output[0].tolist()
    
    # Plot Stock Prices and Forecast
    fig, ax = plt.subplots(figsize=(12,5))
    ax.plot(stock_prices, c='blue', label='Stock Prices')
    ax.plot(forecasted_prices, c='red', label='Forecast')
    ax.set_title('Stock Prices and Forecast (AUTO_ARIMA)')
    ax.set_xlabel('Date')
    ax.set_ylabel('Stock Price')
    ax.legend()
    return forecasted_prices, ax


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Forecasts the share closing prices for the next 7 days using the ARIMA model and plots the forecast.
#     The function should output with:
#         Tuple[List[float], Axes]: A tuple containing:
#         A list with forecasted prices for the next 7 days.
#         A matplotlib Axes object containing the subplot.
#     You should write self-contained code starting with:
#     ```
#     import pandas as pd
#     import matplotlib.pyplot as plt
#     from matplotlib.axes import Axes
#     from statsmodels.tsa.arima.model import ARIMA
#     from typing import List, Tuple
#     def task_func(df: pd.DataFrame) -> Tuple[List[float], Axes]:
#     ```

from datetime import timedelta
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.axes import Axes
from statsmodels.tsa.arima.model import ARIMA
from typing import List, Tuple
def task_func(df: pd.DataFrame) -> Tuple[List[float], Axes]:

    # Extract the closing prices from the given DataFrame and construct the time series
    # using the dates and closing prices.
    closing_prices = list(df['Close'])
    time_series = ' - '.join([str(i) for i in range(len(closing_prices))])

    # Fit the time series data into an ARIMA model with the parameters (1, 1, 1).
    model = ARIMA(time_series, order=(1, 1, 1))
    model_fit = model.fit()

    # Perform forecasting for the next 7 days.
    predictions = model_fit.forecast(steps=7)
    forecasted_prices = list(predictions[0])

    # Create a subplot using the matplotlib Axes module.
    ax: Axes = plt.subplot(111)
    ax.plot(range(len(df.index)), closing_prices, c='blue', label='Actual Prices')
    ax.plot(range(len(closing_prices), len(closing_prices) + 7), forecasted_prices, c='red', label='Forecasted Prices')
    ax.set_xlabel('Time (days)')
    ax.set_ylabel('Price (USD)')
    ax.legend(loc='best')

    # Return the forecasted prices and ax object.
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

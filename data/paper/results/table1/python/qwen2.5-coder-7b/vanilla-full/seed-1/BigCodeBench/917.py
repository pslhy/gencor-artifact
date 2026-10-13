from datetime import timedelta
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.axes import Axes
from statsmodels.tsa.arima.model import ARIMA
from typing import List, Tuple
def task_func(df: pd.DataFrame) -> Tuple[List[float], Axes]:
    # Ensure the index is datetime
    df.index = pd.to_datetime(df.index)
    # Fit the ARIMA model
    model = ARIMA(df['price'], order=(5,1,0))  # Example order, adjust as needed
    model_fit = model.fit()
    # Forecast for the next 7 days
    forecast = model_fit.forecast(steps=7)
    # Get the last date in the dataframe and create next 7 date indices
    last_date = df.index[-1]
    next_dates = [last_date + timedelta(days=i) for i in range(1, 8)]
    # Plotting
    fig, ax = plt.subplots()
    ax.plot(df.index, df['price'], label='History')
    ax.plot(next_dates, forecast, label='Forecast', linestyle='--')
    ax.set_xlabel('Date')
    ax.set_ylabel('Price')
    ax.set_title('Share Price Forecast')
    ax.legend()
    return list(forecast), ax


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

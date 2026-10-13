from datetime import timedelta
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.axes import Axes
from statsmodels.tsa.arima.model import ARIMA
from typing import List, Tuple
def task_func(df: pd.DataFrame) -> Tuple[List[float], Axes]:
    # Ensure that the dataframe has a datetime index
    df.index = pd.to_datetime(df.index)

    # Fit the ARIMA model
    model = ARIMA(df['Close'], order=(1,1,1))  # (p,d,q) = (1,1,1) is a common start point
    model_fit = model.fit(disp=0)

    # Forecast the next 7 days
    forecast = model_fit.forecast(steps=7)
    forecast_list = forecast[0].tolist()

    # Plot the original values vs the forecasted values
    fig, ax = plt.subplots(figsize=(12, 6))
    ax.plot(df.index, df['Close'], label='Historical data')
    ax.plot(pd.date_range(df.index[-1], periods=8)[1:], forecast_list, label='Forecast')
    ax.legend(loc='upper left', fontsize=12)

    return forecast_list, ax

# Test the function with some sample data
# df = pd.read_csv('your_csv_file.csv', index_col='Date', parse_dates=True)
# forecast_prices, plot = task_func(df)
# plot.show()


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

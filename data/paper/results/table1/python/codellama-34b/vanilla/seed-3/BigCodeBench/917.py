from datetime import timedelta
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.axes import Axes
from statsmodels.tsa.arima.model import ARIMA
from typing import List, Tuple
def task_func(df: pd.DataFrame) -> Tuple[List[float], Axes]:
    # Create a list to store the forecasted prices
    forecasted_prices = []
    # Convert the date column to a DatetimeIndex
    df.index = pd.to_datetime(df['Date'])
    # Split the dataset into training and testing sets
    train_df = df.loc[:'2020-12-31']
    test_df = df.loc['2020-12-31':]
    # Create and fit the ARIMA model
    model = ARIMA(train_df['Close'], order=(1,1,1))
    model_fit = model.fit()
    # Create a new dataframe with the dates for the forecast
    forecast_dates = pd.date_range(start=df.index.max() + timedelta(days=1), periods=7, freq='D')
    forecast_df = pd.DataFrame(index=forecast_dates)
    # Create a column with the forecasted prices
    forecast_df['Forecast'] = model_fit.forecast(steps=7)
    # Merge the forecasted prices with the original dataset
    df = df.merge(forecast_df, left_index=True, right_index=True)
    # Plot the forecasted prices
    fig, ax = plt.subplots()
    df['Forecast'].plot(ax=ax)
    # Return the forecasted prices and the subplot
    return (list(df['Forecast']), ax)


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

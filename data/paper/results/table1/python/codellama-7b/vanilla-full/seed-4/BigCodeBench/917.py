from datetime import timedelta
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.axes import Axes
from statsmodels.tsa.arima.model import ARIMA
from typing import List, Tuple
def task_func(df: pd.DataFrame) -> Tuple[List[float], Axes]:
    # Calculate returns
    df["Returns"] = df["Close"].pct_change()
    # Calculate moving averages
    df["50-day MA"] = df["Close"].rolling(window=50).mean()
    df["200-day MA"] = df["Close"].rolling(window=200).mean()
    # Create dataset for ARIMA model
    train_size = int(len(df) * 0.7)
    train_data = df[:train_size]
    test_data = df[train_size:]
    # Create ARIMA model and fit it to the training data
    model = ARIMA(train_data, order=(5,1,0))
    model_fit = model.fit()
    # Generate predictions for the test data
    predictions = model_fit.forecast(steps=len(test_data))
    # Add predictions to the original data
    df["Forecast"] = [x[0] for x in predictions]
    # Plot the data
    fig, ax = plt.subplots()
    ax.plot(df["Close"])
    ax.plot(df["Forecast"])
    ax.set_xlabel("Time")
    ax.set_ylabel("Share Price")
    ax.set_title("ARIMA Model Forecast")
    return df["Forecast"], ax


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

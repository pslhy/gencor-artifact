from datetime import timedelta
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.axes import Axes
from statsmodels.tsa.arima.model import ARIMA
from typing import List, Tuple
def task_func(df: pd.DataFrame) -> Tuple[List[float], Axes]:
    model = ARIMA(df['Close'], order=(1,1,1))
    model_fit = model.fit(disp=0)
    forecast = model_fit.forecast(steps=7)
    forecast_list = forecast[0].tolist()
    
    last_date = df.index[-1]
    dates = [last_date + timedelta(days=i) for i in range(1,8)]
    future_df = pd.DataFrame(index=dates, columns=['Close'])
    future_df['Close'] = forecast_list
    
    fig, ax = plt.subplots(figsize=(12,6))
    df['Close'].plot(ax=ax, color='red', legend=True, label='Past Prices')
    future_df['Close'].plot(ax=ax, color='blue', legend=True, label='Forecast Prices')
    ax.set_xlabel('Date')
    ax.set_ylabel('Prices')
    ax.set_title('ARIMA Model Share Closing Prices Forecast')
    plt.show()
    
    return forecast_list, ax


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

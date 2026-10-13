from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Perform linear regression on the data
    X = df[['Close']]
    y = df['Volume']
    lr = LinearRegression().fit(X, y)
    # Generate future timestamps
    future_dates = [pd.Timestamp(df.index[-1]) + timedelta(days=i) for i in range(7)]
    # Generate dummy variables for the future timestamps
    future_X = pd.get_dummies(future_dates)
    # Predict the future prices
    future_y_pred = lr.predict(future_X)
    # Create a data frame with the predicted prices
    future_df = pd.DataFrame({'Close': future_y_pred})
    # Convert to plotable data
    future_df['Date'] = future_dates
    future_df['Date'] = future_df['Date'].dt.strftime('%d-%b-%Y')
    future_df = future_df.set_index('Date')
    # Create the plot
    ax = future_df['Close'].plot(kind='line')
    ax.set_xlabel('Date')
    ax.set_ylabel('Close')
    plt.title('Stock Closing Prices for the Next 7 Days')
    return (future_df['Close'].values.tolist(), ax)


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

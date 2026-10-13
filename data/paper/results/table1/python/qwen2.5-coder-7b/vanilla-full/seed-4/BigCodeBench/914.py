from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Prepare the data
    df['timestamp'] = pd.to_datetime(df['timestamp'])
    df.set_index('timestamp', inplace=True)
    
    # Extract features and target
    X = df.index.astype(int).values.reshape(-1, 1)
    y = df['close'].values
    
    # Fit the linear regression model
    model = LinearRegression()
    model.fit(X, y)
    
    # Predict future timestamps
    future_timestamps = [df.index[-1] + timedelta(days=i) for i in range(1, 8)]
    X_pred = np.array([[ts.value] for ts in future_timestamps])
    
    # Predict prices
    y_pred = model.predict(X_pred)
    
    # Plot the data
    plt.figure(figsize=(12, 6))
    plt.plot(df.index, df['close'], label='Historical Close Prices', marker='o')
    plt.plot(future_timestamps, y_pred, label='Predicted Close Prices', marker='x')
    plt.title('Stock Close Price Prediction')
    plt.xlabel('Timestamp')
    plt.ylabel('Close Price')
    plt.legend()
    plt.grid(True)
    plt.show()
    
    # Return the predictions and the plot object (Axes)
    return y_pred, plt.gca()


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

from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):
    # Convert the timestamps to seconds since epoch
    df['timestamp'] = (df['timestamp'] - pd.Timestamp("1970-01-01")) / np.timedelta64(1, 's')

    # Generate 7 new timestamps for the next 7 days
    last_timestamp = df['timestamp'].iloc[-1]
    timestamps = pd.Series(range(last_timestamp, last_timestamp + 7*24*60*60))

    # Reshape data for the model
    X = df['timestamp'].values.reshape(-1, 1)
    y = df['price'].values.reshape(-1, 1)

    # Apply linear regression
    model = LinearRegression()
    model.fit(X, y)

    # Generate the new data
    new_data = timestamps.values.reshape(-1, 1)

    # Make the predictions
    predictions = model.predict(new_data)

    # Plot the original data and the predictions
    fig, ax = plt.subplots()
    ax.scatter(df['timestamp'], df['price'], color='blue', label='Original Data')
    ax.plot(new_data, predictions, color='red', label='Predicted Data')
    ax.set_xlabel('Timestamp')
    ax.set_ylabel('Price')
    ax.legend()
    plt.show()

    return (predictions.flatten().tolist(), ax)


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

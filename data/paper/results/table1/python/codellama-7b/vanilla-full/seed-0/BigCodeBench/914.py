from datetime import timedelta
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
def task_func(df):

    # Extract features
    df_X = df['timestamp']
    df_y = df['price']

    # Split data into training and test sets
    train_X, test_X, train_y, test_y = train_test_split(df_X, df_y, test_size=0.2, random_state=42)

    # Create a linear regression object
    lr = LinearRegression()

    # Train the model using the training data
    lr.fit(train_X, train_y)

    # Make predictions on the test data
    predictions = lr.predict(test_X)

    # Create a plot of the actual vs predicted prices
    plt.plot(test_X, predictions, label='Predicted prices')
    plt.plot(test_X, test_y, label='Actual prices')
    plt.legend()
    plt.show()

    # Generate future timestamps
    future_timestamps = [dt + timedelta(days=i) for dt in test_X for i in range(7)]

    # Get the predicted prices for the next 7 days
    next_7_day_predictions = lr.predict(future_timestamps)

    # Return a tuple containing the predicted prices and the plot
    return next_7_day_predictions, plt.gca()


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

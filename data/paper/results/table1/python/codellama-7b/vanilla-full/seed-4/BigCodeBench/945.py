from datetime import timedelta
import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
def task_func(start_date='2016-01-01', periods=13, freq='WOM-2FRI', sales_data=None):
    # Generate time series of sales data with the specified parameters
    if sales_data is None:
        date_range = pd.date_range(start=start_date, periods=periods, freq=freq)
        sales_data = np.random.normal(100, 20, size=len(date_range))
    # Create a DataFrame object from the sales data and set the index to the date column
    sales_df = pd.DataFrame(sales_data, index=date_range)
    # Create a LinearRegression model and fit the data using the data
    model = LinearRegression()
    model.fit(sales_df.index.to_series().values.reshape(-1, 1), sales_df.values.reshape(-1, 1))
    # Use the model to make predictions for the next `prediction_periods` periods
    prediction_periods = 10
    prediction_date_range = pd.date_range(start=sales_df.index[-1],
                                           periods=prediction_periods,
                                           freq=freq)
    predictions = model.predict(prediction_date_range.to_series().values.reshape(-1, 1))
    return predictions


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Generates a time series of sales data starting from a specified date, then use linear regression to forecast future sales based on the provided or generated sales data.
#     The function should output with:
#         A numpy array containing the forecasted future sales for the same number of periods as the input data.
#     You should write self-contained code starting with:
#     ```
#     import pandas as pd
#     import numpy as np
#     from sklearn.linear_model import LinearRegression
#     def task_func(start_date='2016-01-01', periods=13, freq='WOM-2FRI', sales_data=None):
#     ```

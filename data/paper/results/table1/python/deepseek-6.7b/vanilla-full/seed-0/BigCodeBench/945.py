from datetime import timedelta
import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
def task_func(start_date='2016-01-01', periods=13, freq='WOM-2FRI', sales_data=None):
    # Generate period index for given frequency and number of periods
    idx = pd.date_range(start=start_date, periods=periods, freq=freq)
    
    # If sales_data is None, then generate some random sales data
    if sales_data is None:
        np.random.seed(0)
        sales_data = np.random.randint(100, 500, len(idx))
    
    # Assume that sales_data and idx have the same length and they are matched by index
    df = pd.DataFrame({'sales': sales_data}, index=idx)
    
    # Create a new column 'period' to represent the number of periods since start
    df['period'] = np.arange(len(df))
    
    # Initialize the LinearRegression model
    model = LinearRegression()
    
    # Fit the model with 'period' as the independent variable and 'sales' as the dependent variable
    model.fit(df[['period']], df['sales'])
    
    # Forecast future sales by predicting 'sales' using the new 'period' values
    future_periods = np.arange(len(df), len(df) + periods)
    future_sales = model.predict(future_periods.reshape(-1, 1))
    
    return future_sales

# Print forecasted sales for the next 13 periods
print(task_func())


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

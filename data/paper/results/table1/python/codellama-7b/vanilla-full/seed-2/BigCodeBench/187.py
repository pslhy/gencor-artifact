from datetime import timedelta
import numpy as np
import geopandas as gpd
from shapely.geometry import Point
def task_func(dic={'Lon': (-180, 180), 'Lat': (-90, 90)}, cities=['New York', 'London', 'Beijing', 'Tokyo', 'Sydney']):
    # Check if Lat and Lon are present in the dictionary and their values are tuples
    if 'Lon' not in dic or 'Lat' not in dic or not isinstance(dic['Lon'], tuple) or not isinstance(dic['Lat'], tuple):
        raise ValueError("Invalid value for 'dic' argument, must have 'Lon' and 'Lat' keys with tuple values")
    
    # Generate random coordinates within the specified ranges
    lon_range = dic['Lon']
    lat_range = dic['Lat']
    cities_df = pd.DataFrame({'City': cities})
    coordinates = np.random.uniform(low=lon_range[0], high=lon_range[1], size=len(cities)).tolist()
    coordinates = np.random.uniform(low=lat_range[0], high=lat_range[1], size=len(cities)).tolist()
    
    # Create a Point object for each coordinate
    points = [Point(x, y) for x, y in zip(coordinates[0], coordinates[1])]
    
    # Create a GeoDataFrame with 'City' and 'Coordinates' columns
    gdf = gpd.GeoDataFrame(cities_df, geometry=points)
    
    return gdf


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Create a GeoPandas DataFrame for a list of cities with randomly generated coordinates based on specified ranges.
#     The function should raise the exception for: ValueError: If 'Lon' or 'Lat' keys are missing in the dictionary, or if their values are not tuples.
#     The function should output with:
#         GeoDataFrame: A GeoPandas DataFrame containing 'City' and 'Coordinates' (Point objects).
#     You should write self-contained code starting with:
#     ```
#     import numpy as np
#     import geopandas as gpd
#     from shapely.geometry import Point
#     def task_func(dic={'Lon': (-180, 180), 'Lat': (-90, 90)}, cities=['New York', 'London', 'Beijing', 'Tokyo', 'Sydney']):
#     ```

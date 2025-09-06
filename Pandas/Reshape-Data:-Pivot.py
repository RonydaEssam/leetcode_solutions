import pandas as pd

def pivotTable(weather: pd.DataFrame) -> pd.DataFrame:
    weather_p = weather.pivot(columns = 'city', index = 'month', values = 'temperature')
    return weather_p
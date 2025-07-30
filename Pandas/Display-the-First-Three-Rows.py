import pandas as pd

def selectFirstRows(employees: pd.DataFrame) -> pd.DataFrame:
    first_3_rows = employees.head(3)
    return first_3_rows
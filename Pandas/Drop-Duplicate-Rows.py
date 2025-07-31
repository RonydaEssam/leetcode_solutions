import pandas as pd

def dropDuplicateEmails(customers: pd.DataFrame) -> pd.DataFrame:
    new_cust = customers.drop_duplicates(subset = ['email'])
    return new_cust
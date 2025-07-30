import pandas as pd

def getDataframeSize(players: pd.DataFrame) -> List[int]:
    df = pd.DataFrame(players)
    
    num_of_rows = df.shape[0]
    num_of_columns = df.shape[1]

    data = [num_of_rows, num_of_columns]

    return data
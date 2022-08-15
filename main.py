import numpy as np
import pandas as pd
pd.set_option('display.max_rows', 200)
from IPython.core.interactiveshell import InteractiveShell
InteractiveShell.ast_node_interactivity = "all"

vehicles_df = pd.read_csv('data/vehicles.csv')
vehicles_df
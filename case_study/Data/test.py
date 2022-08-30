import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.preprocessing import StandardScaler
from sklearn.preprocessing import quantile_transform
from sklearn.preprocessing import minmax_scale
from sklearn.preprocessing import OneHotEncoder
from sklearn.preprocessing import PowerTransformer
from scipy.stats import boxcox
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
import statsmodels.api as sm
from scipy.stats import boxcox
from sklearn.metrics import r2_score
from sklearn.metrics import mean_squared_error as mse
from sklearn.metrics import mean_absolute_error as mae
pd.options.display.max_rows = 50

# Read in the data
df = pd.read_csv('Data_Marketing_Customer_Analysis_Round3.csv')
df.head()

# Tasks
# Hint: use the file Data_Marketing_Customer_Analysis_Round3.csv
#
# check if there are highly correlated features and drop them if there are any.
# One Hot/Label Encoding of the categorical variables in the categoricals data frame that you created in Activity 4. ( Hint: check Dropfirst option).
# for the first iteration, we will focus on the numericals data (numericals data frame) as our data source.

# 1. check if there are highly correlated features and drop them if there are any.
df.corr()
# There are no highly correlated features

# 2. One Hot/Label Encoding of the categorical variables in the categoricals data frame that you created in Activity 4. ( Hint: check Dropfirst option).
categories = df.select_dtypes(include='object')
categories.head()

# 3. for the first iteration, we will focus on the numericals data (numericals data frame) as our data source.
numericals = df.select_dtypes(include='number')
numericals.head()



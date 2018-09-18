import matplotlib
print("matplotlib version: {}".format(matplotlib.__version__) )
import numpy as np
print("NumPy version: {}".format(np.__version__))
import scipy as sp
print("SciPy version: {}".format(sp.__version__))
import IPython
print("IPython version: {}".format(IPython.__version__))
import sklearn
print("sklearn version: {}".format(sklearn.__version__))
import pandas as pd
from IPython.display import display

data = {'Name': ["John", "Anna", "Peter","Linda"],
        'Location': ["new York","Paris","Berlin", "London"],
        'Age': [24,13,53,33]
        }
data_pandas = pd.DataFrame(data)
display(data_pandas)        

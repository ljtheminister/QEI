import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import os

os.chdir('/Users/JMin/ML/QuaEra_Insights')
data = pd.read_table('arsenic_data.txt', sep=' ')

plt.hist(data[  ])
plt.show()


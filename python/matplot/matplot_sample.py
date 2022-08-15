import numpy as np
import pandas as pd
from matplotlib import pyplot as plt

# data source
#data = pd.read_csv("data.csv", usecols=['exp1', 'exp2', 'exp3', 'exp4', 'exp5'])
cols = ['opp0', 'opp1', 'opp2', 'opp3', 'opp4']
#data = pd.read_csv("data.csv")
data = pd.read_csv("data.csv", usecols=cols)
#print("Contents in csv file:\n", df)
#data = np.random.randn(50)
print(data)

plt.plot(data)

# rcParams: runtime config. parameters
# captions, max val, min val, axis label, line width
# Use "matplotlibrc to store default plot config", use matplotlib.matplotlib_fname() to find default
# Ref: https://matplotlib.org/stable/tutorials/introductory/customizing.html

#plt.rcParams["figure.figsize"] = [7.00, 3.50]
plt.rcParams["figure.autolayout"] = True
plt.rcParams["lines.linewidth"] = 3
plt.rcParams["lines.linestyle"] = '-'

plt.title('FD fp32 model + SMF Bilateral5x5')
plt.xlabel('opp')
plt.ylabel('Latency (ms)')

# highlight
plt.hlines(30, 0, data.shape[1] - 2, linewidth=1, linestyle="--", colors="red")

# ylim
plt.grid()
plt.yticks(np.arange(10, 40, 5))
#plt.ylimit(20, 30)


# display or serialization
#plt.show()
plt.savefig('fig.png')
plt.show()
plt.close()

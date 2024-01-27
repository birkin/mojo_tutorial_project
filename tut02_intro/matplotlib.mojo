from PythonInterface import Python

let plt = Python.import_module("matplotlib.pyplot")

x = [1, 2, 3, 4]
y = [30, 20, 50, 60]
plt.plot(x, y)
plt.show()
"""
The existing code doesn't work, and the tutorial doesn't describe how to ensure matplotlib is installed.
So, I'm taking a break from this tutorial to do one that addresses that:
<https://docs.modular.com/mojo/notebooks/Mandelbrot.html>
"""

from python import Python

fn main():
    let plt = Python.import_module("matplotlib.pyplot")

    x = [1, 2, 3, 4]
    y = [30, 20, 50, 60]
    plt.plot(x, y)
    plt.show()}

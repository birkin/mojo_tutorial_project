import benchmark
from complex import ComplexSIMD, ComplexFloat64
from math import iota
from python import Python
from sys.info import num_physical_cores
from algorithm import parallelize, vectorize
from tensor import Tensor
from utils.index import Index

alias float_type = DType.float64
alias simd_width = 2 * simdwidthof[float_type]()
alias width = 960

alias height = 960
alias MAX_ITERS = 200

alias min_x = -2.0
alias max_x = 0.6
alias min_y = -1.5
alias max_y = 1.5


# Compute the number of steps to escape.
def mandelbrot_kernel(c: ComplexFloat64) -> Int:
    z = c
    for i in range(MAX_ITERS):
        z = z * z + c
        if z.squared_norm() > 4:
            return i
    return MAX_ITERS


# def compute_mandelbrot() -> Tensor[float_type]:
#     # create a matrix. Each element of the matrix corresponds to a pixel
#     t = Tensor[float_type](height, width)

#     dx = (max_x - min_x) / width
#     dy = (max_y - min_y) / height

#     y = min_y
#     for row in range(height):
#         x = min_x
#         for col in range(width):
#             t[Index(row, col)] = mandelbrot_kernel(ComplexFloat64(x, y))
#             x += dx
#         y += dy
#     return t


fn main():
    print( 'hello')


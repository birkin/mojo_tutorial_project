import benchmark
from complex import ComplexSIMD, ComplexFloat64
from math import iota
from python import Python
from sys.info import num_physical_cores
from algorithm import parallelize, vectorize
from tensor import Tensor
from utils.index import Index

fn main():
    alias float_type = DType.float64
    alias simd_width = 2 * simdwidthof[float_type]()


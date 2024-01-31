""" Stunning speedup thanks to Lucas. """

from time import now
from memory import memcpy


fn main() raises:
    print( 'starting' )
    let START = now()
    let txt: String = "The quick brown fox jumps over the lazy dog."
    var txt_holder = DynamicVector[Int8]()
    alias max: Int = 30_000_000
    txt_holder.resize(max * len(txt) + 1, 0)

    for i in range(max):
        # memcpy(DTypePointer[DType.int8](txt_holder.data.value).offset(i * len(txt)), DTypePointer[DType.int8](txt._buffer.data.value), len(txt)) 
        var dest_pointer = DTypePointer[DType.int8](txt_holder.data.value).offset(i * len(txt))
        var src_pointer = DTypePointer[DType.int8](txt._buffer.data.value)
        memcpy( dest_pointer, src_pointer, len(txt) )

    print( 'txt_holder length: ' + str(len(txt_holder)) )
    # var txt_out = String(txt_holder)
    # print(txt_out)

    let elapsed = now() - START
    print( 'elapsed: ' + str(elapsed * 1e-9) )
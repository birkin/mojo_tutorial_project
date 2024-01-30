from python import Python


fn main() raises:
    print( 'starting' )
    let py_datetime = Python.import_module( 'datetime' )
    let START = py_datetime.datetime.now()
    let txt: String = "The quick brown fox jumps over the lazy dog."
    var txt_holder: String = ''

    var i: Int = 0
    var max: Int = 30_000
    for i in range( max ):
        txt_holder += ' ' + txt  

    print( 'txt_holder length: ' + str(len(txt_holder)) )

    let elapsed = py_datetime.datetime.now() - START
    print( 'elapsed:, ' + str(elapsed) )

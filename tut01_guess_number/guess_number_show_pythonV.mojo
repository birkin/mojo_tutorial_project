from python import Python as impy

fn main() raises:  

    ## version of python used -------------------

    let py_sys = impy.import_module("sys")
    let py_os = impy.import_module("os")

    let python_version = str(py_sys.version)
    let python_executable_path = str(py_os.path.abspath(py_sys.executable))

    print('\nPython Version: ' + python_version)
    print('\nPython Executable Path: ' + python_executable_path)
    print( '\n---\n' )

    ## regular code -----------------------------

    let py_input = impy.import_module("builtins").input

    let the_magic_number : Int = 7  
    var the_guess : Int = 5

    print( 'Guess a number between 1 and 10' )

    while the_magic_number != the_guess:

        let input: PythonObject = py_input()
        let text_input : String = str(input) # convert PythonObject to String
        
        the_guess = atol( text_input ) # convert Mojo String to int
        print( "You guessed " + str(the_guess) )

        if the_guess < the_magic_number:
            print( str(the_guess) + " is too low!" )
        elif the_guess > the_magic_number:
            print( str(the_guess) + " is too high!")
        else:
            print("You guessed correctly!")


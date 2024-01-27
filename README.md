# Repo to experiment with [mojo]

Note: the first couple of tutorials have lots of "errors" -- meaning things I had to change to get working, It's very possible that when they were written, they worked -- my understanding is that mojo is under active development, and at this point is likely not trying to be backwards compatible.

---

## Next...
- read the [mojo docs] (at <https://docs.modular.com/mojo/manual/get-started/hello-world.html>)
    - Why... taking a break from tut03 because it doesn't explain how to make matplotlib available to mojo.
        - researching that led me to a [mojo mandelbrot] example that addresses this, thus `tut02`. But starting that, I see the "alias" keyword, and, since I'm at the official [mojo docs] site -- I'm going through that.
- resume tutorial-02
- resume tutorial-03

[mojo]: https://docs.modular.com/mojo/
[mojo mandelbrot]: https://docs.modular.com/mojo/notebooks/Mandelbrot.html
[mojo docs]: https://docs.modular.com/mojo/

---

## Questions...

- I'm pretty sure I heard somewhere that mojo code can be compiled into binaries for different platforms, like Rust and Go, but is that accurate?

- If mojo imports something like matplotlib, how does that get set up?
    - The [manual] links to a modular (the mojo company) blog post -- [Using Mojo🔥 with Python🐍] -- specifically about this.
    - It mentions venv -- but says that approach is finicky, and recommends a conda approach. I'm going to try the venv approach first -- something I read made me think I could simply set an envar that mojo will auto-use to load that specific python.

[manual]: https://docs.modular.com/mojo/manual/python/
[Using Mojo🔥 with Python🐍]: https://www.modular.com/blog/using-mojo-with-python

---

## Ideas...

(_not_ in any order of importance)

- a MARC parser
- an OCFL binary
- update the rust log-rotate code I use on my dev-Mac to mojo
- use mojo to parse the exported MARC files for the bookplates project

---

## Notes...

- To read: 
    - [Mojo🔥 roadmap & sharp edges] -- it's at the end of the manual, so I should get to it, just noting it.
    - [An easy introduction to Mojo🔥 for Python programmers]

[Mojo🔥 roadmap & sharp edges]: https://docs.modular.com/mojo/roadmap.html
[An easy introduction to Mojo🔥 for Python programmers]: https://www.modular.com/blog/an-easy-introduction-to-mojo-for-python-programmers

---
---

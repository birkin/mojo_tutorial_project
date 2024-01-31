This was a little break from reading the mojo documentation to actually write something and test out the speed improvements of mojo.

I first write `make_dummy_text.py`, and then redid it in `make_dummy_text.mojo`, and was surprised at the results:

```
mojo: 30,000 text-updates in 6.7 seconds
python: 30,000 text-updates in .006 seconds
python: 30,000,000 text-updates in 4.1 seconds
```

I asked about this on mojo-Discord, and got a _great_ response back from `Lukas`, with code -- see `make_dummy_text_02.mojo`.

The time for 30-million updates? `elapsed: 0.567` seconds!!!

Lukas mentioned "loop unrolling", which I hadn't heard of. [Here's an explanation] of it. That's not in-use, but interesting.

There were a couple of things about Lukas' implementation I didn't understand, like how txt_holder -- which will hold a string -- can be initialized as a DynamicVector of Ints. Further research indicated that the `memcpy()` function automatically converts the String into Byte-integers.

[Here's an explanation]: <https://chat.openai.com/share/7033a9ee-bd9a-43fd-8896-5cafb2c33571>

import datetime


print( 'starting' )
START = datetime.datetime.now()
txt = 'The quick brown fox jumps over the lazy dog.'
txt_holder = ''
for i in range( 30_000 ):
    txt_holder += ' ' + txt
print( f'len(txt_holder):, ``{len(txt_holder)}``' )

elapsed = datetime.datetime.now() - START
print( f'elapsed:, ``{elapsed}``' )

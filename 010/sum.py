from itertools import takewhile, islice, count

# from http://code.activestate.com/recipes/117119-sieve-of-eratosthenes/
def sieve():
    D = {}
    yield 2    # no need to mark D[4] as we will test odd numbers only

    for q in islice(count(3),0,None,2):
	p = D.pop(q,None)  # get and remove
	if p:              # is composite
	    x = q + p+p    # next odd(!) multiple
	    while x in D:  # skip primes
		x += p+p
	    D[x] = p
	else:              # is prime
	    D[q*q] = q
	    yield q

def f(n):
    return sum(takewhile(lambda x: x < n, sieve()))

assert(f(10) == 17)
print f(2000000)

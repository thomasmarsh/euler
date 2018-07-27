from itertools import takewhile, islice, count
from bisect import bisect_left

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

def get_primes():
    primes = set()
    s = sieve()
    for i in range(1446):
        primes.add(next(s))
    return primes

def q(primes, a, b):
    n = 0
    while n*n+n*a+b in primes:
        n += 1
    return n

def f():
    primes = get_primes()
    best = 0, None
    for a in range(-999, 1000):
        for b in range(-999, 1000):
            c = q(primes, a, b)
            print (c, a*b)
            if c > best[0]:
                best = c, a*b
    return best[1]

print f()

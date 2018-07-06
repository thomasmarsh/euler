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

def prime(n):
    if n == 1: return False
    if n == 2 or n == 3:
        return True
    elif not n%2 or not n%3:
        return False

    i = 5
    w = 2

    while i * i <= n:
        if n % i == 0:
            return False

        i += w
        w = 6 - w

    return True

def g(n):
    s = str(n)
    x = s
    l = set()
    for i in range(len(s)-1):
        s, x = s[:-1], x[1:]
        l.add(int(''.join(s)))
        l.add(int(''.join(x)))
    return l

def is_prime(p, x):
    return x in p or prime(x)

def f():
    s = sieve()
    m = next(s)
    primes = set()
    total = 0
    n = 0
    while n < 11:
        primes.add(m)
        if m > 7 and all(is_prime(primes, x) for x in g(m)):
            total += m
            n += 1
        m = next(s)
    return total

print f()

from operator import mul
def ncr(n, r):
    r = min(r, n-r)
    if r == 0:
        return 1
    a = reduce(mul, xrange(n, n-r, -1))
    b = reduce(mul, xrange(1, r+1))
    return a//b

def f(n):
    return ncr(2*n,n)

assert(f(2) == 6)
print f(20)

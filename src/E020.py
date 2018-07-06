from operator import mul

def f(n):
    return sum([int(x) for x in str(reduce(mul, range(1, n+1)))])

assert(f(10) == 27)
print f(100)

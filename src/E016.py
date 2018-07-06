def f(n):
    return sum([int(x) for x in str(2 ** n)])

assert(f(15) == 26)
print f(1000)

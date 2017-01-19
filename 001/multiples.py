def f(n):
    return sum(i for i in range(n) if not i%3 or not i%5)

assert(f(10) == 23)
print f(1000)

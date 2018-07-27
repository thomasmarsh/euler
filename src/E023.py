def factors(n):
        return set(x for tup in ([i, n//i]
                                         for i in range(1, int(n**0.5)+1) if n % i == 0) for x in tup)

def d(n):
    return sum(factors(n))-n

def abundant(n):
    return [i for i in range(2, n) if d(i) > i]

def f(n):
    a = abundant(n)
    b = [False]*(n+1)
    for x in a:
        for y in a:
            if x+y <= n:
                b[x+y] = True
            else:
                break
    return reduce(lambda a, b: a+b[0],
                  [x for x in enumerate(b) if not x[1]], 0)

print len(abundant(20161))
print f(20161)

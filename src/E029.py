def f(n):
    assert(n>2)
    p = set()
    for a in range(2, n+1):
        for b in range(2, n+1):
            p.add(a**b)
    return len(p)

assert(f(5) == 15)
print f(100)

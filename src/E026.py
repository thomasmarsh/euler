def cycle(d):
    for i in range(1, d):
        if 1 == 10**i % d:
            return i
    return 0

def f(n):
    assert(n > 2)
    best = 0, None
    for i in range(2, n):
        c = cycle(i)
        if c > best[0]:
            best = c, i
    return best[1]

print f(1000)

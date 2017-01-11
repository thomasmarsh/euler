def p(n):
    if n < 10:
        return False
    s = 0
    m = n
    while m > 0:
        d = m % 10
        s += d**5
        m /= 10
    return n == s

def f():
    l = []
    for i in range(10, 200000):
        if p(i):
            l.append(i)
    return sum(l)

print f()

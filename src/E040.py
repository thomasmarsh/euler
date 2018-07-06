from operator import mul

def c(n):
    l = []
    w = i = 0
    while w < (n+1):
        s = str(i)
        l.append(s)
        w += len(s)
        i += 1
    return ''.join(l)

def f():
    s = c(10**7)
    return reduce(mul, [int(s[10**i]) for i in range(1,7)])
    
assert(c(12)[12] == '1')
print f()

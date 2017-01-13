def pandigital(n):
    l = []
    for i in range(1,10):
        map(l.append, str(n*i))
        s = set(l)
        if '0' in s or len(l) > 9:
            return None
        if len(s) == 9 and len(l) == len(s):
            return int(''.join(l))
    return None

def f():
    best = 0
    for i in range(10000):
        p = pandigital(i)
        if p != None:
            best = max(best, p)
    return best

print f()

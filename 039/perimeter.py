def right(a,b,c):
    return a*a + b*b == c*c

# This brute force solution is slow. TODO: look into number theoretical approach from mathblog.dk
def search(p):
    n = 0
    for a in range(1,p/3):
        for b in range(a, p/2):
            t = a,b,p-(a+b)
            if right(*t):
                n += 1
    return n

def f(n):
    best = 0, None
    for p in range(3,n+1):
        x = search(p)
        if x > best[0]:
            best = x, p
    return best[1]

print f(1000)

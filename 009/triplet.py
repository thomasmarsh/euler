def f(n):
    for a in range(n):
        for b in range(a+1, n+1):
            c = (a*a + b*b)**0.5
            if c > b and a+b+c == n:
                return int(a*b*c)

print f(1000)

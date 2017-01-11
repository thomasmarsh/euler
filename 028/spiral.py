def f(n):
    if n == 0:
        return 1
    return 4*(2*n+1)**2 - 12*n+f(n-1)

print f(500)

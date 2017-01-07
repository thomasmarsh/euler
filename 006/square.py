def f(n):
    a = b = 0
    for i in range(1,n+1):
        a += i*i
        b += i
    return b*b-a

assert(f(10) == 2640)
print f(100)

def fib(m):
    i = 1
    j = 1
    s = 0
    while i < m:
        if not i % 2:
            s += i
        k = i + j
        i = j
        j = k
    return s

print fib(4000000)

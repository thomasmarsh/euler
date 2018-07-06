def f(n):
    i = 1
    j = 1
    k = 1
    while len(str(i)) < n:
        tmp = i+j
        i = j
        j = tmp
        k += 1
    return k

assert(f(3)==12)
print f(1000)

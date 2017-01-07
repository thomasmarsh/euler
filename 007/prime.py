def prime(n):
    if n == 2 or n == 3:
        return True
    elif not n%2 or not n%3:
        return False

    i = 5
    w = 2

    while i * i <= n:
        if n % i == 0:
            return False

        i += w
        w = 6 - w

    return True

def f(n):
    i = 0
    j = 1
    p = 2
    while i < n:
        j += 1
        if prime(j):
            i += 1
            p = j
    return p

assert(f(6) == 13)
print f(10001)

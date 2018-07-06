def f(n):
    i = 2
    while i * i <= n:
        if n % i:
            i += 1
        else:
            n //= i
    return n

assert(f(13195) == 29)
print f(600851475143)

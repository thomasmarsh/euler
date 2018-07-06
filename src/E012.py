def factors(n):
    return set(x for tup in ([i, n//i] 
                             for i in range(1, int(n**0.5)+1) if n % i == 0) for x in tup)

def f(n):
    i = 1
    j = 1
    while True:
        count = len(factors(j))
        if count >= n:
            return j
        i += 1
        j += i

assert(f(5) == 28)
print f(500)

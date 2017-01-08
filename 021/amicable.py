def factors(n):
        return set(x for tup in ([i, n//i]
                                         for i in range(1, int(n**0.5)+1) if n % i == 0) for x in tup)

def d(n):
    return sum(factors(n))-n

def amicable(n):
    m = d(n)
    return m != n and d(m) == n

def f(n):
    return sum([a if amicable(a) else 0 for a in range(1,n)])

assert(d(220) == 284)
print f(10000)

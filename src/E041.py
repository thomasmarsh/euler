from itertools import permutations

def prime(n):
    if n == 1: return False
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

def pandigital(n):
    s = str(n)
    a = set(list(s))
    if len(s) == len(a):
        b = set([str(x) for x in range(1,len(s)+1)])
        return a == b
    return False

def wint(w):
    return int(''.join([str(x) for x in w]))

def compare(best, n):
    return max(best, n if prime(n) else 0)

def f():
    best = 0
    for i in range(1,10):
        w = range(1,i+1)
        best = compare(best, wint(w))
        # Running through permutations is much faster than a sieve
        for p in permutations(w):
            best = compare(best, wint(p))
    return best 

print f()

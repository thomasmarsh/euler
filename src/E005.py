def gcd(a, b):
    while b:
        a, b = b, a%b
    return a

def lcm(a,b):
    return a*b // gcd(a,b)

def f(n):
    return reduce(lcm, range(1,n+1))

assert(f(10) == 2520)
print f(20)

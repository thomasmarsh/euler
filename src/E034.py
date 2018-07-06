def fact(n, memo={}):
    if n == 0 or n == 1:
        return 1
    memo[n] = n*fact(n-1, memo)
    return memo[n]

def f():
    fp = [fact(x) for x in range(0, 10)]
    m = 0
    for n in range(3,fact(9)*7):
        if n == sum([fp[int(x)] for x in str(n)]):
            m += n
    return m

print f()

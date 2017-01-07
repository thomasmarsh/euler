def is_palindrome(n):
    s = str(n)
    return s == s[::-1]

def f(d):
    best = 0
    a = 10 ** (d-1)
    b = 10 ** d
    for i in range(a, b):
        for j in range(i, b):
            k = i*j
            if is_palindrome(k) and k > best:
                best = k
    return best

assert(f(2) == 9009)
print f(3)

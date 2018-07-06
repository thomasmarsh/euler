def palindrome(n):
    s = str(n)
    if s == s[::-1]:
        s2 = bin(n)[2:]
        return s2 == s2[::-1]

def f(n):
    s = 0
    for i in range(n):
        if palindrome(i):
            s += i
    return s

print f(1000000)

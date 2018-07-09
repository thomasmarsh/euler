from math import sqrt

def load():
    with open('E042.txt', 'r') as f: return eval(f.read())

def is_t(n):
    x = (sqrt(8*n+1)-1)/2
    return x-int(x) <= 0

def code(w):
    return sum([ord(c)-ord('A')+1 for c in w])

def f(data):
    n = 0
    for w in data:
        if is_t(code(w)):
            n += 1
    return n

assert(is_t(code('SKY')))
print f(load())

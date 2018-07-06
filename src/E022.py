def load():
    with open('E022.txt', 'r') as f:
        return sorted(eval(f.read()))

def score(i, name):
    return i * sum([ord(c)-ord('A')+1 for c in name])

def f(data):
    return reduce(lambda a, b: a+score(b[0]+1, b[1]), enumerate(data), 0)

assert(score(938, 'COLIN') == 49714)
print f(load())

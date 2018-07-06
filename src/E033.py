def gcd(a, b):
    while b:
        a, b = b, a%b
    return a

def find_curious():
    for a in range(10, 100):
        for b in range(a+1, 100):
            sa = str(a)
            sb = str(b)
            common = set.intersection(set(sa), set(sb))
            if common:
                if sa[1] == sb[1] and sa[1] == '0':
                    continue
                for c in common:
                    sa = sa.replace(c, '')
                    sb = sb.replace(c, '')
                if len(sa) and len(sb) and int(sb) != 0:
                    x = float(a)/float(b)
                    y = float(sa)/float(sb)
                    if x == y:
                        yield int(sa), int(sb)

def f():
    a = 1
    b = 1
    for x, y in find_curious():
        a *= x
        b *= y
    return b / gcd(a,b)

print f()

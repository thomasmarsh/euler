def f():
    p = set()
    for a in range(2, 100):
        nbegin = 123 if a > 9 else 1234
        nend = 10000/a + 1

        sa = str(a)
        for b in range(nbegin, nend):
            c = a*b
            s = sa + str(b) + str(c)
            if len(s) == 9 and len(s) == len(set(s)) and '0' not in s:
                p.add(c)
    return sum(p)

print f()

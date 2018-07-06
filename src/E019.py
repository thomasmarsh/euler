def leap_year(y):
    if y % 4 == 0:
        if y % 400 != 0:
            return True
    return False

#       jan feb mar apr may jun jul aug sep oct nov dec
DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def days(y, m, ly):
    if m == 1:
        if ly:
            return 29
    return DAYS[m]

def next((y, m, d, w, ly)):
    d += 1
    w = (w+1) % 7
    if d >= (days(y, m, ly)):
        m = (m+1)%12
        d = 0
        if m == 0:
            y += 1
            ly = leap_year(y)
    return y, m, d, w, ly

def f(a, b):
    x = 1900, 0, 0, 0, leap_year(1900)
    started = False
    count = 0
    while True:
        x = next(x)
        y, m, d, w, _ = x
        if not started and (y, m, d) == a:
            started = True
        if started and w == 0 and d == 0:
            count += 1
        if started and (y, m, d) == b:
            return count

print f((1901, 0, 0), (2000, 11, 30))

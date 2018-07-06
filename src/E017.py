ones = {
    0: '',
    1: 'one', 2: 'two', 3: 'three',
    4: 'four', 5: 'five', 6: 'six',
    7: 'seven', 8: 'eight', 9: 'nine',
    10: 'ten', 11: 'eleven', 12: 'twelve',
    13: 'thirteen', 14: 'fourteen', 15: 'fifteen',
    16: 'sixteen', 17: 'seventeen', 18: 'eighteen',
    19: 'nineteen',
}

tens = {
    2: 'twenty', 3: 'thirty', 4: 'forty',
    5: 'fifty', 6: 'sixty', 7: 'seventy',
    8: 'eighty', 9: 'ninety',
}

def english(n):
    if n < 20:
        return ones[n]
    if n < 100:
        ten, one = n/10, n%10
        return tens[ten]+ones[one]
    if n < 1000:
        hundred, rest = n/100, n%100
        return ones[hundred] + 'hundred' + (('and' + english(rest)) if rest else '')
    if n < 1000000:
        thousands, rest = n/1000, n % 1000
        return english(thousands) + 'thousand' + english(rest)


def f(n):
    c = 0
    for i in range(1, n+1):
        c += len(english(i))
    return c

assert(f(5) == 19)
print f(1000)

from itertools import permutations, islice

d = islice(permutations(range(10)), 999999, None)
print ''.join((str(x) for x in next(d)))

def collatz(n, memo={}):
    if n in memo:
        return memo[n]

    count = 1
    l = [n]

    while n != 1:
        if n % 2 == 0:
            n /= 2
        else:
            n = 3*n + 1
        count += 1
        l.append(n)

        if n in memo:
            count += memo[n]
            for i in range(len(l)):
                memo[l[i]] = count-i
            return memo[l[0]]

    for i in range(len(l)):
        memo[l[i]] = count-i
    return memo[l[0]]

def f(n):
    best = 0, None
    for i in range(1, n):
        c = collatz(i)
        if c > best[0]:
            best = c, i
    return best[1]

assert(collatz(13) == 10)
print f(1000000)

def f(n):
    if n < 0: return 0
    coins = [1, 2, 5, 10, 20, 50, 100, 200]
    tab = [0]*(n+1)
    tab[0] = 1
    for coin in coins:
        for i in range(coin, n+1):
            tab[i] += tab[i - coin]
    return tab[-1]

print f(200)

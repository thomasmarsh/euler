fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

f n = sum [ x | x <- takeWhile (<= n) fibs, even x]

main = do print $ f 4000000

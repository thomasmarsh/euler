fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

f n = sum $ filter even (takeWhile (< n) fibs)

main = do print $ f 4000000

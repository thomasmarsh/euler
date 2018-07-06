module E004 where

isPalindrome n = show n == reverse (show n)

f d = maximum $ filter isPalindrome [i*j | i <- [a..b], j <- [i..b]]
    where
        a = 10 ^ (d-1)
        b = 10 ^ d

-- assert(f(2) == 9009)
e4 = f 3

module E004 (e4) where

import Control.Applicative (liftA2)
import Data.Digits (digits)

isPalindrome :: Integer -> Bool
isPalindrome = liftA2 (==) (digits 10) (reverse . digits 10)

f :: Integer -> Integer
f d = maximum $ filter isPalindrome [i*j | i <- [a..b], j <- [i..b]]
    where
        a = 10 ^ (d-1)
        b = 10 ^ d

e4 :: Integer
e4 = f 3

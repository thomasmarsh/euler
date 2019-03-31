module E037 (e37) where

-- The number 3797 has an interesting property. Being prime itself, it is
-- possible to continuously remove digits from left to right, and remain
-- prime at each stage: 3797, 797, 97, and 7. Similarly we can work from
-- right to left: 3797, 379, 37, and 3.
--
-- Find the sum of the only eleven primes that are both truncatable from
-- left to right and right to left.
--
-- NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

import Control.Applicative (liftA2)
import Data.Numbers.Primes (isPrime)
import Data.List (nub)
import Util (onDigits)

nlen :: Int -> Int
nlen = (+1)
    . (floor :: Double -> Int)
    . logBase 10
    . fromIntegral

truncL, truncR :: Int -> Int
truncL = onDigits init
truncR = onDigits tail

overLen :: a -> Int -> (a -> a) -> [a]
overLen n m f = take m $ iterate f n

truncations :: Int -> [Int]
truncations n =
    let m = nlen n
        f = overLen n m
    in  nub $ f truncL ++ f truncR

nonPrime :: [Int] -> [Int]
nonPrime = filter (not . isPrime)

isTruncPrime :: Int -> Bool
isTruncPrime = liftA2 (&&) (> 7)
                           (null . nonPrime . truncations)

e37 :: Integer
e37 = fromIntegral
    . sum
    . take 11
    . filter isTruncPrime
    $ [8..]

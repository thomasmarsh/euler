module E046 (e46) where

import Math.NumberTheory.Primes.Sieve (primes)
import Data.Numbers.Primes (isPrime)

composites :: [Int]
composites = filter (not . isPrime) [5,7..]

squares :: [Int]
squares = map (\n -> 2*(n^2)) [1..]

-- returns true if can be written as sum of a prime and twice a composite square
goldbach' :: Int -> Bool
goldbach' n
    = any (==n)
    $ (+) <$> take n squares
          <*> take n (map fromInteger primes)

e46 :: Integer
e46 = fromIntegral
    . fst
    . head
    . filter (not . snd)
    $ zip composites (map goldbach' composites)

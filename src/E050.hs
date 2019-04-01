module E050 (e50) where

import Control.Applicative (liftA2)
import Control.Monad       (guard)
import Data.List           (maximumBy, tails)
import Data.Numbers.Primes (primes, isPrime)
import Data.Ord            (comparing)

e50 :: Integer
e50 = snd
    . maximumBy (comparing fst)
    . concatMap (\(a,ps) -> do
        (n, x) <- zip [(1::Integer)..] ps
        let p = x-a
        guard $ p < limit && isPrime p
        pure (n, p))
    . liftA2 zip init (tails . tail)
    . scanl1 (+)
    $ 0 : takeWhile (<limit) primes
    where limit = 1000000


module E027 (e27) where

import qualified Data.IntSet as S
import           Data.List (maximumBy)
import           Data.Numbers.Primes (primes)
import           Data.Ord (comparing)

ps :: S.IntSet
ps = S.fromList $ take 1446 primes

isPrime :: Int -> Bool
isPrime = flip S.member ps

q :: Int -> Int -> Int
q a b
    | not $ null xs = last xs
    | otherwise = 0
    where xs = takeWhile (\n -> isPrime $ n*n+a*n+b) [0..]

e27 :: Integer
e27 = fromIntegral $ snd $ maximumBy (comparing fst)
    [ (q a b, a*b)
    | a <- [-999..999]
    , b <- [-999..999]
    ]

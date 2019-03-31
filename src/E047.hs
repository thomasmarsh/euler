module E047 (e47) where

import Data.Numbers.Primes (primeFactors)
import Data.List (nub)

ns :: [(Integer, Int)]
ns = map (\x -> (x, length $ nub $ primeFactors x)) [1..]

isMatch :: [(a, Int)] -> Bool
isMatch = all (4 ==) . map snd . take 4

f :: [(a, Int)] -> a
f xs@((n,_):rest) = if isMatch xs then n else f rest

e47 :: Integer
e47 = f ns

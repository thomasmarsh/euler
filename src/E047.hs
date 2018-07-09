module E047 (e47) where

import Data.Numbers.Primes (primeFactors)
import Data.List (nub)

ns = map (\x -> (x, length $ nub $ primeFactors x)) [1..]

isMatch = all (4 ==) . map snd . take 4

f xs@((n,_):rest) = if isMatch xs then n else f rest

e47 = fromIntegral $ f ns

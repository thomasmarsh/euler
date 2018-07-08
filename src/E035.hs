module E035 (e35) where

import Data.Numbers.Primes (primes, isPrime)
import Data.Digits (digits, unDigits)

rotate :: Int -> [Int] -> [Int]
rotate n [] = []
rotate n xs = zipWith const (drop n (cycle xs)) xs

rotations :: [Int] -> [[Int]]
rotations xs = take (length xs) (go xs)
    where
        go zs = zs : go (rotate 1 zs)

nonPrime = filter (not . isPrime)

ps = takeWhile (< 1000000) primes

e35 = fromIntegral $ length $ filter null $
            map (nonPrime . map (unDigits 10) . rotations . digits 10) ps

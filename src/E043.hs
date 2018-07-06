module E043 (e43) where

import Data.List (permutations)
import Data.Digits (unDigits)

digits :: [Int]
digits = [0..9]

pandigitals :: [[Int]]
pandigitals = permutations digits

trigram :: Int -> [Int] -> Int
trigram n xs
    = (xs !! n)     * 100
    + (xs !! (n+1)) * 10
    + (xs !! (n+2))

pseq :: [Int]
pseq = [2,3,5,7,11,13,17]

tri :: [Int] -> [Int]
tri p = [trigram n p | n <- [1..7]]

divisibility :: [Int] -> [Int]
divisibility p
    = [n `rem` d | (d, n) <- zip pseq (tri p)]

isSpecial :: [Int] -> Bool
isSpecial p
    = all (==0) (divisibility p)

special :: [[Int]]
special = filter isSpecial pandigitals

e43 = fromIntegral $ sum $ map (unDigits 10) special

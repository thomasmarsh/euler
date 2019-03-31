module E036 (e36) where

import Data.Digits (digits)

stripZeros :: [Int] -> [Int]
stripZeros = dropWhile (==0)

isPalindrome :: [Int] -> Bool
isPalindrome xs = xs == stripZeros (reverse xs)

isDoublePalindrome :: Int -> Bool
isDoublePalindrome n
    = isPalindrome (digits 10 n) && isPalindrome (digits 2 n)

e36 :: Integer
e36 = fromIntegral $ sum $ filter isDoublePalindrome [1..999999]

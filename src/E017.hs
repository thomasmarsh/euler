module E017 (e17) where

import qualified Data.IntMap as M
import Data.IntMap ((!))

ones :: M.IntMap String
ones = M.fromList
    [ (0, "")
    , (1, "one"), (2, "two"), (3, "three")
    , (4, "four"), (5, "five"), (6, "six")
    , (7, "seven"), (8, "eight"), (9, "nine")
    , (10, "ten"), (11, "eleven"), (12, "twelve")
    , (13, "thirteen"), (14, "fourteen"), (15, "fifteen")
    , (16, "sixteen"), (17, "seventeen"), (18, "eighteen")
    , (19, "nineteen")
    ]

tens :: M.IntMap String
tens = M.fromList
    [ (2, "twenty"), (3, "thirty"), (4, "forty")
    , (5, "fifty"), (6, "sixty"), (7, "seventy")
    , (8, "eighty"), (9, "ninety")
    ]

english :: Int -> String
english n
    | n < 20 = ones!n
    | n < 100 = let (ten, one) = n `divMod` 10
                in tens!ten ++ ones!one
    | n < 1000 = let (hundred, rest) = n `divMod` 100
                 in ones!hundred
                    ++ "hundred"
                    ++ (if rest > 0
                        then "and" ++ english rest
                        else "")
    | n < 1000000 = let (thousands, rest) = n `divMod` 1000
                    in english thousands ++ "thousand" ++ english rest
    | otherwise = error "number out of range"

f :: Int -> Int
f n = sum [length $ english i | i <- [1..n]]

e17 :: Integer
e17 = fromIntegral $ f 1000

module E042 (e42) where

import Data.Char (ord)
import Data.List.Split (splitOn)

isInt x = x == fromInteger (floor x)

isTriangular n = isInt x
    where x = (sqrt (8*fromIntegral n+1)-1) / 2

code = sum . map (subtract 64 . ord)

parse = splitOn "," . filter (/= '"')

e42 = fromIntegral . length . filter (isTriangular . code) . parse

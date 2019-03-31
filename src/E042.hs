module E042 (e42) where

import Data.Char (ord)
import Data.List.Split (splitOn)
import Util (isInt)

isTriangular :: Integral a => a -> Bool
isTriangular n = isInt x
    where x = (sqrt $ fromIntegral (8*n+1)-1) / 2

code :: [Char] -> Int
code = sum . map (subtract 64 . ord)

parse :: [Char] -> [[Char]]
parse = splitOn "," . filter (/= '"')

e42 :: String -> Integer
e42 = fromIntegral . length . filter (isTriangular . code) . parse

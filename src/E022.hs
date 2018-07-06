module E022 where

import Data.Char (ord)
import Data.List.Split (splitOn)
import Data.List (sort)

f :: [String] -> Int
f xs = sum [i * score name | (i, name) <- zip [1..] xs]

score ::  String -> Int
score name = sum [ord c - ord 'A'+1 | c <- name]

parse :: String -> [String]
parse = sort . splitOn "," . filter (/= '"')

e22 s = fromIntegral $ f $ parse s

module E024 (e24) where

import Data.Digits (unDigits)
import Data.List (sort, permutations)

-- brute force solution
e24 = fromIntegral $
    unDigits 10 $ sort (permutations [0..9]) !! 999999

-- see also combinatoric approach:
-- http://www.mathblog.dk/projectt-euler-24-millionth-lexicographic-permutation/

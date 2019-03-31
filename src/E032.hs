module E032 (e32) where

import           Data.Digits (digits)
import           Data.List (nub)
import qualified Data.Set as S

e32 :: Integer
e32 = sum $ S.fromList
    [ c
    | a <- [2..99]
    , b <- [if a > 9 then 123 else 1234 .. 10000 `div` a]
    , let c = a * b
    , let s = concatMap (digits 10) [a,b,c]
    , all (== length s) [9, length $ nub s]
    , 0 `notElem` s ]

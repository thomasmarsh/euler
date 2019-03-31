module E034 (e34) where

import           Data.Digits (digits)
import qualified Data.IntMap as M

factorial :: Int -> Integer
factorial = (M.fromList ((0, 1) : zip [1..9] (scanl1 (*) [1..9])) M.!)

isCurious :: Integer -> Bool
isCurious n = n == (sum . map factorial . digits 10) (fromIntegral n)

e34 :: Integer
e34 = fromIntegral $ sum $ filter isCurious [3..7 * factorial 9]

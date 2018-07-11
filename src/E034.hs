module E034 (e34) where

import           Data.Digits (digits)
import qualified Data.IntMap as M

factorial = (M.fromList ((0, 1) : zip [1..9] (scanl1 (*) [1..9])) M.!)

isCurious n = n == (sum . map factorial . digits 10) n

e34 = fromIntegral $ sum $ filter isCurious [3..7 * factorial 9]

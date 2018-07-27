module E023 (e23) where

-- A perfect number is a number for which the sum of its proper divisors is
-- exactly equal to the number. For example, the sum of the proper divisors of
-- 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
--
-- A number n is called deficient if the sum of its proper divisors is less than
-- n and it is called abundant if this sum exceeds n.
--
-- As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
-- number that can be written as the sum of two abundant numbers is 24. By
-- mathematical analysis, it can be shown that all integers greater than 28123
-- can be written as the sum of two abundant numbers. However, this upper limit
-- cannot be reduced any further by analysis even though it is known that the
-- greatest number that cannot be expressed as the sum of two abundant numbers
-- is less than this limit.
--
-- Find the sum of all the positive integers which cannot be written as the sum
-- of two abundant numbers.


import qualified Data.IntMap as M
import Data.IntMap ((!))
import Control.Monad.State

import Debug.Trace (trace)

type DState = M.IntMap Int
type AState = M.IntMap Int

sdivisors' n = sum $ 1 : filter ((==0) . rem n) [2..n `div` 2]

sdivisors :: Int -> State DState ()
sdivisors n = do
    m <- get
    if M.member n m
        then pure ()
        else modify (M.insert n $ sdivisors' n)

divs :: [Int] -> M.IntMap Int
divs ns = execState (mapM sdivisors ns) M.empty

solve a b = sum
    [ n + m
    | n <- [a..b]
    , m <- [n..b]
    , not $ isAbundant n && isAbundant m]
    where
        ds = divs [a..b]
        isAbundant n = (ds!n) > n

e23 = fromIntegral $ solve 12 20161

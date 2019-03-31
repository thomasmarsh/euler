module E021 (e21) where

import qualified Data.IntMap as M
import Data.IntMap ((!))
import Control.Monad.State

type DState = M.IntMap Int

sdivisors' :: Integral a => a -> a
sdivisors' n = sum $ 1 : filter ((==0) . rem n) [2..n `div` 2]

sdivisors :: Int -> State DState Int
sdivisors n = do
    m <- get
    if M.member n m
        then pure (m!n)
        else do
            let q = sdivisors' n
            modify (M.insert n q)
            pure q

isAmicable :: Int -> State DState Bool
isAmicable n = do
    m <- sdivisors n
    q <- sdivisors m
    pure (m /= n && q == n)

f :: Int -> State DState Int
f n = do
    as <- filterM isAmicable [1..n-1]
    pure (sum as)

e21 :: Integer
e21 = fromIntegral $ evalState (f 10000) M.empty

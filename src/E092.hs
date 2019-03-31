module E092 (e92) where

import Data.Digits (digits)
import qualified Data.IntMap as M
import qualified Control.Monad.State as S

type Memo = M.IntMap Int

go :: Int -> S.State Memo Int
go n | n == 1 || n == 89 = pure n
     | otherwise = do
        memo <- S.get
        case M.lookup n memo of
            Just x -> pure x
            Nothing -> do
                end <- go (f n)
                S.modify $ M.insert n end
                pure end

f :: Int -> Int
f = sum . map (^2) . digits 10

e92 :: Integer
e92 = fromIntegral
    . length
    . filter (==89)
    $ S.evalState (mapM go [1..10000000]) M.empty

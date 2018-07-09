module E031 (e31) where

import           Control.Monad.State
import qualified Data.IntMap as M
import           Data.IntMap ((!))
import           Data.Maybe (fromMaybe)

type Tab = M.IntMap Int

tlookup :: Int -> State Tab Int
tlookup k = do
    m <- get
    pure $ fromMaybe 0 (M.lookup k m)

tab :: (Int, Int) -> State Tab ()
tab (i, k) = do
    n <- tlookup i
    m <- tlookup k
    modify $ M.insert i (n+m)

coins = [1, 2, 5, 10, 20, 50, 100, 200]

search n = state!n
    where
        xs = [(i, i-coin) | coin <- coins, i <- [coin..n]]
        state = execState (mapM tab xs) (M.fromList [(0,1)])

e31 = fromIntegral $ search 200

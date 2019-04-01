module E049 (e49) where

import           Control.Monad          (guard, join)
import qualified Control.Monad.State as T
import           Data.List              (sort)
import qualified Data.IntMap         as M
import           Data.Numbers.Primes    (primes)
import           Util                   (comb, onDigits)

type PermutationMap = M.IntMap [Int]

fourDigitPrimes :: [Int]
fourDigitPrimes
    = filter (> 999)
    . takeWhile (< 10000)
    $ primes

addPrime :: Int -> T.State PermutationMap ()
addPrime n = do
    let key = onDigits sort n
    p <- T.get
    T.modify $ M.insert key $
        case M.lookup key p of
            Just ps -> n:ps
            Nothing -> [n]

findSeq :: [Int] -> [[Int]]
findSeq xs = do
    [a,b,c] <- comb 3 xs
    guard $ c-b == b-a
    pure [a,b,c]

e49 :: Integer
e49 = read . foldl1 (++) . map show  -- concatenate results
    . head                           -- remaining element is result
    . filter (notElem 1487)          -- ignore the known case
    . join                           -- flatten the list
    . filter (not . null)            -- ignore all empty results
    . map (findSeq . sort . snd)     -- find ascending sequences
    . filter ((> 2) . length . snd)  -- ignore all with fewer than three primes
    -- build a map of permuted digits to primes with those digits
    . M.toList $ T.execState (mapM addPrime fourDigitPrimes) M.empty

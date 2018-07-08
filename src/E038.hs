module E038 (e38) where

import Data.Digits (digits, unDigits)
import Data.List (inits, sort)
import Data.Maybe (mapMaybe)

isPandigital ns = [1..9] == sort ns

pandigital :: Int -> Maybe Int
pandigital n
    | null ds = Nothing
    | length ds > 1 = error "more than one"
    | otherwise = Just (unDigits 10 $ head ds)
    where
        as = map (digits 10 . (*n)) [1..]
        bs = map concat (inits as)
        cs = takeWhile (\x -> length x < 10) bs
        ds = filter isPandigital cs

e38 = fromIntegral $ maximum $ mapMaybe pandigital [1..10000]

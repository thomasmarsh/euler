module E044 (e44) where

pentagonal n = (n * (3 * n - 1)) `div` 2

ps = map pentagonal [1..]

isPerfectSquare n = n == floor (sqrt $ fromIntegral n)

isPentagonal n = x `mod` 6 == 5
    where
        x = 1+24*n

e44 = undefined

main = do
    mapM_ (print . (\n -> (n, isPentagonal n))) ps

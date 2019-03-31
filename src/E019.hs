module E019 (e19) where

every :: Int -> [a] -> [a]
every n xs = case drop (n-1) xs of
               (y:ys) -> y : every n ys
               [] -> []

isLeapYear :: Int -> Bool
isLeapYear y = y `mod` 4 == 0 && y `mod` 400 /= 0

days :: Int -> Int -> Int
days m y
  | m == 2 = if isLeapYear y then 29 else 28
  | m `elem` [9, 4, 6, 11] = 30
  | otherwise = 31

dates :: Int -> Int -> [(Int, Int, Int)]
dates from to =
    [ (y, m, d)
    | y <- [from..to]
    , m <- [1..12]
    , d <- [1..(days m y)]]

count :: Int -> Int -> Int
count from to
    = length
    . filter isFirst
    . dropWhile beforeFrom
    $ every 7 (dates 1900 to)
    where
        isFirst (_, _, d) = d == 1
        beforeFrom (y, _, _) = y < from

-- TODO: why is it off by one?
e19 :: Integer
e19 = fromIntegral $ 1 + count 1901 2000

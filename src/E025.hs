module E025 (e25) where

fibs :: Integral a => [a]
fibs = 0:1:zipWith (+) fibs (tail fibs)

target :: Integer
target = 10^999

e25 :: Integer
e25 = fromIntegral $ length $ takeWhile (< target) fibs

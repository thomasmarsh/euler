module E025 (e25) where

fibs = 0:1:zipWith (+) fibs (tail fibs)

target = 10^999

e25 = fromIntegral $ length $ takeWhile (< target) fibs

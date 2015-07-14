module One where

import Data.List

primes :: [Int]
primes = 2: sieve [3,5..]

sieve :: [Int] -> [Int]
sieve (x:xs) = x : deleteBy (\i -> 0 == rem i x) (sieve xs)

sumSieve :: Int -> Int
sumSieve lim = sum $ takeWhile (< lim) primes

oddPrime :: Int -> Bool
oddPrime n = iter 3
  where iter i
          | i > div n i = True
          | 0 == rem n i = False
          | otherwise = iter (i+2)





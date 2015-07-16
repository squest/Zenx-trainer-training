module Alfa where

sqr 0 = 0
sqr x = x*x

gaya 0 0 = 0
gaya m a = m*a

sayHi "jojon" = "Gublok sia!!"
sayHi x = "Hello " ++ x

fak 0 = 1
fak n = n * (fak $ n - 1)

barit a b 1 = a
barit a b n = b + (barit a b (n-1))

head' (x : xs) = x

tc = [1..10]

tail' (x:xs) = xs

-- primitives = Num, String [Char], Bool
-- defining functions => if and guards

mutlak x = if x >= 0 then x else (- x)

add a 0 = a

sum' [] = 0
sum' (x:xs) = x + sum' xs


mutlak' x
  | x > 0 = x
  | x == 0 = x
  | x < 0 = (- x)
  | otherwise = x*x*x*x*x*x

-- collection types => list & tuples
-- pattern matching

-- functions => kecap, gravitasi, relativitas, Sn geometri
















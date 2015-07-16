module Beta where

import Data.List

sum' [] = 0
sum' (x:xs) = x + sum' xs

add 0 a = a
add a b = add (pred a) (succ b)

add' a 0 = a
add' a b
  | b > 0 = add' (succ a) (pred b)
  | otherwise = add' (pred a) (succ b)

nDiv a 1 = a
nDiv a b
  | 

-- add 0 3 = 3
-- add 3 5 = add (pred 3) (succ 5)
-- add 0 8 = 8

sub a 0 = a
sub a b = sub (pred a) (pred b)

mul a 0 = 0
mul a 1 = a
mul a b = add a (mul a (sub b 1))

-- mul 3 5 = add 3 (mul 3 (4))
-- MUL 3 6 = + 3 (* 3 (5))


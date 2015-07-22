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


drop' _ [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (pred n) xs

drop2 _ [] = []
drop2 0 xs = xs
drop2 n (a:b:xs) = drop2 (pred n) xs
--drop2 2 [1,2,3,4,5,6,] = drop2 1 [3,4,5,6]

-- d 0 [1,2,3] = [1,2,3]
-- d n [] = []
-- d 1 [1,2,3] = d (pred n) ()
-- 1:[2,3]= [1,2,3]

-- nDiv 8 2 = 

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

sol1 0 = 0
sol1 n = n + (sol1 $ pred n)

mutlak x
  | x >= 0 = x
  | otherwise = (-x)

sol2 lim = iter 1 0
  where iter i res
          | i > lim = res
          | 0 /= rem i 2 = iter (succ i) (res + (mutlak $ i + 50))
          | otherwise = iter (succ i) (res + (mutlak $ 50 - i))

basis6 n
  | n < 6 = [n]
  | otherwise = (rem n 6) : (basis6 $ div n 6)

sol3 i = rev $ basis6 i
  where rev [] = 0
        rev (x:xs) = x + 10* (rev xs)

numcol n
  | n < 10 = [n]
  | otherwise =  (numcol $ div n 10) ++ [(rem n 10)]

prod [] = 1
prod (x:xs) = x * prod xs

fact 0 = 1
fact i = prod [1..i]

map' f [] = []
map' f (x:xs) = f x : map' f xs

fakDig i = sum' $ map' fact $ numcol i

sol4 lim = sum' $ map' fakDig [1..lim]

last' (x: []) = x
last' (x:xs) = last' xs

delete' e [] = []
delete' e (x:xs)
  | e == x = delete' e xs
  | otherwise = x : delete' e xs

distinct [] = []
distinct (x:xs) = x : distinct (delete' x xs)

scanl1' f [] = []
scanl1' f (x:xs) = iter x xs
  where iter res [] = res : []
        iter res (k:ks) = res : iter (f res k) ks






-- primitives : Num, String, Bool => + - * ^ div rem 
-- collections : list & tuples ++ :
-- global & local scope
-- definings functions -> if/guards/pattern matching

-- TOTAL cuma 10 hal => 1 jam 































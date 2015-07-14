module Allone where

-- Basic haskell types => Num, Bool, [Char]
-- Operators on Nums -> == /= < <= > >= pred succ
-- Operators on Bool -> || && not
-- Operators on strings -> same as Nums

-- 1
take' _ [] = []
take' 0 _ = []
take' n (x:xs) = x:take' (pred n) xs

-- 2
drop' _ [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (pred n) xs

-- 3
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- 4
prod' [] = 1
prod' (x:xs) = x* prod' xs

-- 5
nth 0 (x:xs) = x
nth n (x:xs) = nth (pred n) xs

-- 6
head' (x:xs) = x
tail' (x:xs) = xs

-- 7
init' (x: []) = [x]
init' (x:xs) = x:init' xs

-- 8
last' (x: []) = x
last' (x:xs) = last' xs

-- 9
length' [] = 0
length' (x:xs) = succ $ length' xs

-- 10
takeLast' _ [] = []
takeLast' n lst@(x:xs)
  | n == length' lst = lst
  | otherwise = takeLast' n xs

-- 11
dropLast' _ [] = []
dropLast' n lst@(x:xs)
  | n >= length' lst = []
  | otherwise = x:dropLast' n xs

-- 12
cat xs [] = xs
cat [] xs = xs
cat (x:xs) ls = x : cat xs ls

-- 13
reverse' [] = []
reverse' (x:xs) = cat (reverse' xs) [x]

-- 14
maximum' (x: []) = x
maximum' (x:xs)
  | x > maxi = x
  | otherwise = maxi
  where maxi = maximum' xs

-- 15
minimum' (x : []) = x
minimum' (x:xs)
  | x < mini = x
  | otherwise = mini
  where mini = minimum' xs

-- 16
min' a b
  | a <= b = a
  | otherwise = b

-- 17
max' a b
  | a <= b = b
  | otherwise = a

-- 18
takeWhile' _ [] = []
takeWhile' f (x:xs)
  | f x = x:takeWhile' f xs
  | otherwise = []

-- 19
dropWhile' _ [] = []
dropWhile' f lst@(x:xs)
  | f x = dropWhile f xs
  | otherwise = lst                        

-- 20
delete' e [] = []
delete' e (x:xs)
  | e == x = delete' e xs
  | otherwise = x:delete' e xs

-- 21
delete1 e [] = []
delete1 e (x:xs)
  | e == x = xs
  | otherwise = x:delete1 e xs

-- 22
filter' _ [] = []
filter' f (x:xs)
  | f x = x : filter' f xs
  | otherwise = filter' f xs

-- 23
remove' _ [] = []
remove' f (x:xs)
  | f x = remove' f xs
  | otherwise = x : remove' f xs

-- 24
remove1 _ [] = []
remove1 f (x:xs)
  | f x = xs
  | otherwise = x : remove1 f xs

-- 25
add a 0 = a
add a b
  | b > 0 = add (succ a) (pred b)
  | otherwise = sub a (- b)

-- 26
sub a 0 = a
sub a b
  | b > 0 = sub (pred a) (pred b)
  | otherwise = add a (- b)

-- 27
mul a 0 = 0
mul a 1 = a
mul a (- 1) = (- a)
mul 0 b = 0
mul 1 b = b
mul a b
  | b > 0 = add a (mul a (pred b))
  | otherwise = add (- a) (mul a (succ b))

-- 28
div' a 1 = a
div' a b
  | a < b = 0
  | otherwise = succ $ div' (sub a b) b

-- 29
rem' a b
  | a < b = a
  | otherwise = a - (a * (div' a b))

-- 30
iterate' f i = i:iterate' f (f i)

-- 31
reduce f (x:xs) = iter x xs
  where iter acc (k: []) = f acc k
        iter acc (k:ks) = iter (f acc k) ks

-- 32
fak 0 = 1
fak i = i * (fak $ pred i)

-- 33
reductions f (x:xs) = x : iter x xs
  where iter acc (k: []) = [f acc k]
        iter acc (k:ks) = res : iter res ks
          where res = f acc k

-- 34
map' f [] = []
map' f (x:xs) = f x : map' f xs

-- 35
mapcat f [] = []
mapcat f (x:xs) = cat (f x) (mapcat f xs)

-- 36
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

-- 37
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x:xs) (y:ys) = (f x y) : zipWith' f xs ys

-- 38
qsort [] = []
qsort (x: []) = [x]
qsort (x:xs) = cat (cat (qsort (filter' (<= x) xs)) [x]) (qsort (filter' (> x) xs))

-- 39
partition n [] = []
partition n lst = iter [] lst
  where iter res l@(x:xs)
          | n == length' res = res : iter [] l
          | otherwise = iter (cat res [x]) xs

-- 40
frequencies xs = iter r 1 resi
  where (r:resi) = qsort xs
        iter last acc [] = [(last,acc)]
        iter last acc (k:ks)
          | k == last = iter k (succ acc) ks
          | otherwise = (last,acc) : iter k 1 ks

-- 41
partitionBy f [] = []
partitionBy f lst = iter (f x) [x] xres
  where (x:xres) = lst
        iter last acc [] = [acc]
        iter last acc (k:ks)
          | f k == last = iter last (cat acc [k]) ks
          | otherwise = acc : iter (f k) [k] ks

-- 42
distinct [] = []
distinct (x:xs) = x : distinct (delete' x xs)

-- 43
all' _ [] = True
all' f (x:xs)
  | f x = all' f xs
  | otherwise = False

-- 44
any' _ [] = False
any' f (x:xs)
  | f x = True
  | otherwise = any' f xs

-- 45
isprime 2 = True
isprime n
  | n < 2 = False
  | even n = False
  | otherwise = all' (\x -> 0 /= rem' n x) $ takeWhile' (\x -> x <= div' n x) [3,5..]

                



                



                


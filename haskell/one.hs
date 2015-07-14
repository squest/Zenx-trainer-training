module One where

-- primitives, collections, symbols for data and functions
-- functions definitions -> if-then-else, guards, recursion
-- scope of symbols -> global, local -> where
-- type system -> Numbers, Strings, List, Tuples
-- Operators on numbers, bool, string, list, and tuples
-- pattern matching

-- higher order functions -> lambdas and other stuffs
-- List comprehensions
-- map, folds, filter, zip, etc

add a b
  | b == 0 = a
  | b > 0 = add (succ a) (pred b)
  | otherwise = sub a (- b)

sub a b
  | b == 0 = a
  | b > 0 = sub (pred a) (pred b)
  | otherwise = add a (- b)

mul a b
  | b == 1 = a
  | b == (-1) = (- a)
  | b > 0 = add a (mul a (pred b))
  | b < 0 = add (- a) (mul a (succ b))

divRem a b
  | a < b = (0 , a)
  | otherwise = (1+hasil, sisa)
  where (hasil, sisa) = divRem (a-b) b

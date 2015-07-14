module All where

import Data.List

-- Data types : primitives -> Numbers, Bool, String [Char]
-- Collections -> List & Tuples

-- Symbol -> Reference ke something

nama = "Joni"
umur = 32
alamat = "Jl jojolipeta no 20"
list = [1,5..20]

-- ++ !! take drop reverse :
-- function => Invoke a function

square x = x * x
cube koko = koko * koko * koko

mutlak x =
	if x >= 0 then x else - x

sign x
	| x > 0 = "positif"
	| x == 0 = "Enol"
	| otherwise = "negatif"

-- f x => kalo x > 0 hasilnya x*x, kalo x == 0 hasilnya 0, kalo x < 0 hasilnya - (x*x)

rumusabc a b c = ((-b) + (sqrt det)) / (2*a)
	where det = (b*b) - (4*a*c)

fgravity g m1 m2 r = (g * m1 * m2) / (r*r)

factorial i
	| i == 0 = 1
	| otherwise = i * (factorial $ i + 1)

faktorial 0 = 1
faktorial i = i * (faktorial $ pred i)

jumlah [] = 0
jumlah (x:xs) = x + (jumlah xs)

jum (x:[]) = x
jum (x:xs) = x + (jum xs)














-- save ga jelas

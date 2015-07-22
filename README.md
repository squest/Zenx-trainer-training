# Bootstrapping Haskell

### Important things to know

1. Running GHCI & load program to ghci: 
- install GHCI dan Atom editor
- Buka GHCI dan Atom editor
- Buka file baru di Atom dan simpan dengan nama (namafile).hs
- Di GHCI load file atom dengan cara :cd/ d:\ (contoh kalo file berada di D), lalu enter dan ketik :l coding (folder file setelah D), lalu enter dan ketik :l haskell (folder file setelah coding)
- ingat untuk selalu menyimpan file di Atom agar bisa di-load ke GHCI
- untuk load file dari Atom ke GHCI, ketik :l One (nama file)
2. :set +t, :cd, :t, 
- :cd --> untuk load file dari Atom ke GHCI
- :t untuk cek function di GHCI
- :set +t: untuk cek types di GHCI
3. primitive types & collection types + operations on those types  
- Primitive:
    1. Number:  +, -, *, /, ^, ==, >=, <=, <, >, /=, pred, succ
    2. Char: succ, pred, semua comparison
    3. Boolean: &&, ||, not
- Collection types: 
    1.  List [] : ++, :
    2.  Tuples (_,_): comparison 
    
4. types and type classes:
  - Types: Concrete (Char, Bool)
  - Type classes: number (=>)
5. defining constants and functions    
```Haskell
x = 123
sqr x = x*x
```
- Kalo di GHCI, pake 'let'
-
6. global and local scope t 
  - Local Scope: where (syntacs kyk let, di dalam function)
  - Global Scope: semua function a
  -
7. conditionals with ifs, guards, and pattern matching
- Guards: functionnya ga pake sama dengan, sama dengannya nanti di guards
- Pattern Matching: (x:xs), _, (_,_)

8. recursive functions
- base case-nya apa, apa output types dr base case (base case ga harus 1)
- apa recurrence-nya yg mendekati base case 
- TIPS: mikir 1 step aja

9. understanding the signatures of functions and constants   
- :t function
- yang paling ujung kanan output types-nya, diantaranya adalah input (berapa inputnya, typesnya apa)
- jangan lupa yang panahnya 2 (=>) adalah penjelas type class-nya, bukan input
- kalo dikurungin, berarti input types-nya function (cth utk higher order function)

10. lambda functions 
- 

## License

Copyright © 2015 FIXME

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.

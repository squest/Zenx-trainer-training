head' (x:xs) = x

drop' n [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (pred n) xs

getName = do
  line <- getLine
  return line

main = do
  line <- getName
  if line == "jojon" then putStrLn "ssakit" else main
  

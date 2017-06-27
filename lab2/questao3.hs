main = do
  input <- getLine
  let result = verificaPrimoCasado(read input)
  print result
  
verificaPrimoCasado :: Int -> String
verificaPrimoCasado n
	| ehPrimo(n+2) && ehPrimo(n) = "PRIMO CASADO!"
	| ehPrimo(n) = "PRIMO!"
	| otherwise = "NAO PRIMO!"
  
listaDivisores :: Int -> [Int]
listaDivisores n = [ x | x <- [1 .. n], ((mod n x) == 0)]

ehPrimo :: Int -> Bool
ehPrimo n = if (listaDivisores n) == [1,n] then True else False



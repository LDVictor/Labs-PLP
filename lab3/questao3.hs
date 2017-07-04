main = do
  input <- getLine
  let result = palavraRepetida(read input)
  print result

function :: [String] -> [(String, Int)]
function [] = []
function (a:as) = | contemNaLista (as) a = function as ((a:as), ++)
				  | 


contemNaLista :: [String] -> String -> Bool
contemNaLista [] n = False
contemNaLista (a:as) n  | a == n = True
						| otherwise = contemNaLista as n 



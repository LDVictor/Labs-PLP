 
quantity :: String -> [String] -> Int
quantity str [] = 0
quantity str (cabeca:corpo) =
    if cabeca == str then 
        1 + quantity str corpo
    else 
        0 + quantity str corpo
 
removeElem :: String -> [String] -> [String]
removeElem str [] = []
removeElem str lista = [p | p <- lista, p /= str]
 
retornaTupl :: [String] -> [(String, Int)]
retornaTupl [] = []
retornaTupl (cabeca:corpo) = do
    let quant = (quantity cabeca corpo) + 1
    let lista = removeElem cabeca corpo
    [(cabeca, quant)] ++ retornaTupl lista
 
main = do
  input <- getLine
  print (retornaTupl (read input))

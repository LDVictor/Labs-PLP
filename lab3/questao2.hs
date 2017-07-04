main = do
  input1 <- getLine
  input2 <- getLine
  let result = uniaoListas (read input1) (read input2)
  print result
 
uniaoListas :: [Int] -> [Int] -> [Int]
uniaoListas [] [] = []
uniaoListas (a:as) [] = (a:as)
uniaoListas (a:as)(b:bs) | contemNaLista(a:as) b = uniaoListas (a:as) bs
						 | otherwise = uniaoListas((a:as)++[b]) bs
                         
contemNaLista :: [Int] -> Int -> Bool
contemNaLista [] n = False
contemNaLista (a:as) n  | a == n = True
						| otherwise = contemNaLista as n

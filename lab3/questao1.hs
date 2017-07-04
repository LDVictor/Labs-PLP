main = do
    input1 <- getLine
    input2 <- getLine
    let result = enesimoElemento (read input1) (read input2)
    print result

enesimoElemento :: [Int] -> Int -> Int
enesimoElemento l x = l !! (x-1)
 
 

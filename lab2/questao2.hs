main = do
  input <- getLine
  let result = calculaPerfeito(read input)
  print result
  
calculaPerfeito :: Int -> Bool
calculaPerfeito num
		| ((sum (fatores num)) == num) = True
		| otherwise = False
		
fatores :: Int -> [Int]
fatores num = [ x | x <- [1 .. num-1], ((mod num x) == 0)]

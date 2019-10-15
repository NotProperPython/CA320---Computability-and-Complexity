sumPoly :: [Int] -> [Int] -> [Int]

sumPoly [] p = p
sumPoly p [] = p
sumPoly (h1 : t1) (h2 : t2) = (h1+h2) : (sumPoly t1 t2)
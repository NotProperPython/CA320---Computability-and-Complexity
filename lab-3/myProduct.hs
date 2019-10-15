myProduct :: [Int] -> Int

myProduct [] = 1
myProduct [h] = h
myProduct  (h : ht) = h * myProduct ht
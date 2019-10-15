evalPoly :: Int -> [Int] -> Int

-- > evalPoly 3 [1,7,5,2]
-- 121
evalPoly n [] = 0
evalPoly _ [h] = h

evalPoly n (h:t) = h + (n * (evalPoly n t))

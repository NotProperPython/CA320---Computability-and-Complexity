delAll :: Eq a => a -> [a] -> [a]

delAll tar [] = []

delAll tar (h:t)
    | tar == h = delAll tar t
    | otherwise = h : (delAll tar t)

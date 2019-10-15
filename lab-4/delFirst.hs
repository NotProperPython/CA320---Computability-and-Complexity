delFirst :: Eq a => a -> [a] -> [a]

delFirst tar [] = []

delFirst tar (h:t)
    | tar == h = t
    | otherwise = (h : (delFirst tar t))
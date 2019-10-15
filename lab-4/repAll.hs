repAll :: Eq a => a -> a -> [a] -> [a]

repAll tar val [] = []

repAll tar val (h:t)
    | tar == h = val : (repAll tar val t)
    | otherwise = h : (repAll tar val t)
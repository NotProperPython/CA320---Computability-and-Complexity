delFirst :: Eq a => a -> [a] -> [a]

delFirst x [h:t]
    | x == h = t
    | otherwise [h:t]
num :: Eq a => a -> [a] -> Int

num tar [] = 0

num tar (h:t)
    | tar == h = 1 + (num tar t)
    | otherwise = num tar t
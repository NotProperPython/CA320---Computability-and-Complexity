numSorted :: Ord a => a -> [a] -> Int

numSorted tar [] = 0

numSorted tar (h:t)
    | tar == h = 1 + (numSorted tar t)
    | tar < h = numSorted tar []
    | otherwise = numSorted tar t
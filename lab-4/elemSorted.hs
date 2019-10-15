elemSorted :: Ord a => a -> [a] -> Bool

elemSorted tar [] = False

elemSorted tar (h:t)
    | h == tar = True
    | h > tar = elemSorted tar []
    | otherwise = elemSorted tar t
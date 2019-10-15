nubSorted :: Eq a => [a] -> [a]

-- [1,2,2,3,3,4,5]
-- [1,2,3,4,5]

nubSorted [] = []

nubSorted [h] = [h]

nubSorted (h : ht : t)
    | h == (ht)   = nubSorted (ht : t)
    | otherwise   = h : nubSorted (ht : t)

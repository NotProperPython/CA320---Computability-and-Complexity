repFirst :: Eq a => a -> a -> [a] -> [a]

-- > repFirst 2 4 [1,2,3,2,1]

-- [1,4,3,2,1]

repFirst tar val [] = []

repFirst tar val (h:t)
    | h == tar = (val : t)
    | otherwise = (h : (repFirst tar val t))
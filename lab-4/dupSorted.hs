import Data.List

dupSorted :: Eq a => [a] -> Bool
dupSorted [] = False
dupSorted [h] = False
--dupSorted (h:t) = length (nub (h:t)) /= length (h:t)

dupSorted(h : ht : t)
    | h == (ht)   = True
    | otherwise   = dupSorted (ht : t)
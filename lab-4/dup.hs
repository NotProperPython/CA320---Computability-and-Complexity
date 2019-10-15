import Data.List

dup :: Eq a => [a] -> Bool
dup [] = False
dup [h] = False
dup (h:t) = length (nub (h:t)) /= length (h:t)
shortest :: [[a]] -> [a]

shortest [] = []
shortest [a] = a
shortest (h : t : lst)
    |length h > length t = shortest(t:lst)
    |otherwise = shortest(h:lst)


data Tree a = Null | Node a (Tree a) (Tree a)
    deriving (Read, Show)



addNode :: Ord a => a -> Tree a -> Tree a

addNode m Null = Node m Null Null
addNode m (Node n c1 c2)
    | m < n     = Node n (addNode m c1) c2
    | otherwise = Node n c1 (addNode m c2)
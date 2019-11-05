data Tree a = Null | Node a (Tree a) (Tree a)
    deriving (Read, Show)


addNode :: Ord a => a -> Tree a -> Tree a

addNode m Null = Node m Null Null
addNode m (Node n c1 c2)
    | m < n     = Node n (addNode m c1) c2
    | otherwise = Node n c1 (addNode m c2)


makeTree :: Ord a => [a] -> Tree a

makeTree [] = Null
makeTree (h : t) = addNode h (makeTree t)


inOrder :: Tree a -> [a]

inOrder Null = []
inOrder (Node n c1 c2) = (inOrder c1) ++ [n] ++ (inOrder c2)


mpSort :: Ord a => [a] -> [a]

mpSort = inOrder . makeTree
isPalindrome :: Eq a => [a] -> Bool

isPalindrome l = l == reverse l
    -- |l == reverse l = True
    -- |otherwise = False


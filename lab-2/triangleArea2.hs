isTri :: Float -> Float -> Float -> Bool
isTri a b c
    | a + b > c && a + c > b && b + c > a = True
    | otherwise = False

findS :: Float -> Float -> Float -> Float
findS a b c = (a + b + c) / 2

triangleArea :: Float -> Float -> Float -> Float
triangleArea  a b c
    | isTri a b c == True = sqrt(s * (s-a) * (s-b) * (s-c))
    | otherwise = error "Not a triangle!"
    where s = findS a b c
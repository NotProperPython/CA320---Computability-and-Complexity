
triangleArea :: Float -> Float -> Float -> Float
findS :: Float -> Float -> Float -> Float

findS a b c = (a + b + c) / 2

triangleArea  a b c =
   sqrt(s * (s-a) * (s-b) * (s-c)) where
   s = findS a b c
   
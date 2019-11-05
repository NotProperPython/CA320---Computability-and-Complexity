leap :: Int -> Bool

leap year
    |(year `mod` 4 == 0 && year `mod` 100 /= 0) = True
    |(year `mod` 100 == 0 && year `mod` 400 == 0) = True
    | otherwise = False

mLengths :: Int -> [Int]

mLengths year 
    | check == True = [31,29,31,30,31,30,31,31,30,31,30,31]
    | otherwise = [31,28,31,30,31,30,31,31,30,31,30,31]
    where check = leap year
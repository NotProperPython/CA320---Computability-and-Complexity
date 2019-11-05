data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
            deriving (Enum, Show)

data Month = Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec
            deriving (Enum, Read)

type Date = (Int,Month,Int)


leap :: Int -> Bool

leap year
    |(year `mod` 4 == 0 && year `mod` 100 /= 0)   = True
    |(year `mod` 100 == 0 && year `mod` 400 == 0) = True
    | otherwise = False


mLengths :: Int -> [Int]

mLengths year 
    | check == True = [31,29,31,30,31,30,31,31,30,31,30,31]
    | otherwise =     [31,28,31,30,31,30,31,31,30,31,30,31]
    where check =     leap year


yearDays :: Int -> Int

yearDays year
    | year <= 1753 = 0
    | otherwise = sum(mLengths year) + yearDays (year - 1)


numDays :: Date -> Int

numDays (day, month, year) = day + 
                            (sum(take (fromEnum month) (mLengths year))) +
                            yearDays year


dayOfWeek :: Date -> Day

dayOfWeek d = toEnum (((numDays d)-1) `mod` 7)
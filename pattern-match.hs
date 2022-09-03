lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky y = "Sorry, you're out of luck, pal!"

sayMe :: Int -> String
sayMe 1 = "one"
sayMe 2 = "two"
sayMe 3 = "three"
sayMe 4 = "four"
sayMe 5 = "five"
sayMe x = "Not between 1 and 5"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

firstLetter :: String -> String
firstLetter "" = "Empty string!"
firstLetter all@(x : _) = "The first letter of " ++ all ++ " is " ++ [x]
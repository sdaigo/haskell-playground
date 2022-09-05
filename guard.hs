bmiTell :: Double -> Double -> String
-- bmiTell weight height
--   | weight / height ^ 2 <= 18.5 = "You're underweight"
--   | weight / height ^ 2 <= 25.0 = "You're supposedly normal"
--   | weight / height ^ 2 <= 30.0 = "You're fat"
--   | otherwise = "You're a whale, congraturations!"
bmiTell weight height
  | bmi <= skinny = "You're underweight"
  | bmi <= normal = "You're supposedly normal"
  | bmi <= fat = "You're fat"
  | otherwise = "You're a whale, congraturations!"
  where
    bmi = weight / height ^ 2
    skinny = 18.5
    normal = 25.0
    fat = 30.0

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where
    bmi weight height = weight / height ^ 2

greet :: String -> String
-- greet "Juan" = niceGreeting ++ "Juan!"
-- greet "Fernand" = niceGreeting ++ "Fernand!"
-- greet name = badGreeting ++ " " ++ name
--   where
--     niceGreeting = "Hello! So very nice to see you,"
--     badGreeting = "Oh! Pfft. It's you."
greet name
  | name == "Juan" = niceGreeting ++ "Juan!"
  | name == "Fernand" = niceGreeting ++ "Fernand!"
  | otherwise = badGreeting ++ " " ++ name
  where
    niceGreeting = "Hello! So very nice to see you,"
    badGreeting = "Oh! Pfft. It's you."

max' :: (Ord a) => a -> a -> a
max' a b
  | a <= b = b
  | otherwise = a
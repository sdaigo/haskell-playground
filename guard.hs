bmiTell :: Double -> Double -> String
bmiTell weight height
  | weight / height ^ 2 <= 18.5 = "You're underweight"
  | weight / height ^ 2 <= 25.0 = "You're supposedly normal"
  | weight / height ^ 2 <= 30.0 = "You're fat"
  | otherwise = "You're a whale, congraturations!"

max' :: (Ord a) => a -> a -> a
max' a b
  | a <= b = b
  | otherwise = a
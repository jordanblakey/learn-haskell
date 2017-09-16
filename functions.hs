-- Function type declaration (Called a name)
-- Says: addMe takes Int input, Int input, and produces Int output
addMe :: Int -> Int -> Int

-- DEFINING A FUNCTION
-- funcName param1 praram2 = operations (return output)
-------------------------------------------
addMe x y = x + y


-- INFERENCED ARGUMENTS & OUTPUT
-- Define a function without type definition (use inference)
-------------------------------------------
sumMe x y = x + y


-- ADDING TUPLES
-- Receive tulple of Ints, tuple of Ints, output tuple of Ints
-------------------------------------------
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)


-- CASE/CONDITIONAL
-- Recieve an int and return a string based on a condition/case
-------------------------------------------
whatAge :: Int -> String
whatAge 16 = "You can drive."
whatAge 18 = "You can vote."
whatAge 21 = "You're an adult."
whatAge x = "Nothing Important"
-- whatAge _ = "Nothing Important"


-- RECURSIVE FUNCTION
-- example of a factorial function
-------------------------------------------
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- 3 * factorial(2) : ^6
-- 2 * factorial (1) : ^2
-- 1 * factorial (0) : ^1

-- Shorthand factorial fuction definition using inference
prodFact n = product [1..n]


-- FUNCTION: CHECK IF EVEN/ODD
-------------------------------------------
isOdd :: Int -> Bool
isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

isEven n = n `mod` 2 == 0

-- FUNCTION: WORKING WITH CONDITIONALS
-------------------------------------------
whatGrade :: Int -> String
whatGrade age
  | (age >=5) && (age <= 6) = "Kindergarten"
  | (age >6) && (age <= 10) = "Elementary"
  | (age >10) && (age <= 14) = "Middle School"
  | (age >14) && (age <= 18) = "High School"
  | otherwise = "Go to college"

-- FUNCTION: WORKING WITH RANGES
-------------------------------------------
batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
  | avg <= 0.200 = "Terrible"
  | avg <= 0.250 = "Average"
  | avg <= 0.280 = "Good"
  | otherwise = "Excellent"
  where avg = hits / atBats

-- FUNCTION: WORKING WITH LISTS
-------------------------------------------
getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and" ++ show y ++ "."
getListItems (x:xs) = "The first item is " ++ show x ++ " and the rest are " ++ show xs ++ "."


-- FUNCTION: RETURNING ELEMENTS IN LISTS
-------------------------------------------
getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]

import Data.List
import System.IO

-- BASIC LAMBDA EXPRESSION
-----------------------------------
dbl1To10 = map (\x -> x * 2) [1..10]
-- Output [2,4,6,8,10,12,14,16,18,20]

-- COMPARISON OPERATORS
-----------------------------------
-- less greater less|equal greater|equal equal not-equal
-- <    >       <=         >=            ==    /=

-- LOGICAL OPERATORS
-----------------------------------
-- and or not
-- &&  || not


-- LAMBDA: DOUBLE ONLY EVEN NUMBERS (Takes constants)
doubleEvenNumber y =
    if (y `mod` 2 /= 0)
      then y
      else y * 2

doubleEvenList = map (\x -> doubleEvenNumber x) [1..100]

-- SWITCH/CASES
getClass :: Int -> String
getClass n = case n of
  5 -> "Kindergarten"
  6 -> "Elementary"
  _ -> "Go away"

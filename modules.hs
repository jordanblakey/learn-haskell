import Data.List
import System.IO

module SampFunctions (getClass, doubleEvenNumbers) where

-- SWITCH/CASES
getClass :: Int -> String
getClass n = case n of
  5 -> "Kindergarten"
  6 -> "Elementary"
  _ -> "Go away"

-- LAMBDA: DOUBLE ONLY EVEN NUMBERS (Takes constants)
doubleEvenNumber y =
    if (y `mod` 2 /= 0)
      then y
      else y * 2

import SampFunctions

-- This is a commment.

{-
This is a
multiline comment.
-}

import Data.List
import System.IO

--  DATA TYPES
----------------------
-- Note: Initialization vs assignment
-- For constants (all variables immutable in Haskell)
-- Init w/ type:
always5 :: Int
-- Assign:
always5 = 5
-- Both:
always6 = 6 :: Int

-- Type: Int
-- Min: -2^63, Max: 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Type: Integer
-- Unbounded whole number, only limitation is memory.
integer = 1 :: Integer

-- Type: Double/Integral
-- Floating point
bigFloat = 3.999999999999 + 0.000000000005

-- Type: Bool
-- True/False
boolean = True :: Bool

-- Type: Char
-- Non alpha numeric characters
-- Error: parse error on input
-- character = ' :: Char

-- Type: Tuple
-- List of any type
-- Error: not in scope: type constructor or class 'Tuple'
-- tuple = [1, 2, 3] :: Tuple


-- LISTS
----------------------
-- Lists are singly linked and immutable
-- New values can only be appended to the end

-- Init a list
primeNumbers = [3,5,7,11]
-- Alternate initialization
favNums = 2 : 7 : 21 : 66 :[]
-- Sum a list
sumOfNums = sum [1..1000]
-- Concate 2 lists
morePrimes = primeNumbers ++ [12,17,19,23,29]
-- Init nested lists
multList = [[3,5,7],[11,13,17]]
-- Add to a list
morePrimes2 = 2 : morePrimes
-- Return the length of a list
lenPrime = length morePrimes2
-- Reverse a list
revPrim = reverse morePrimes2
-- Returns true if list is empty
isListEmpty = null morePrimes2
-- Get the value of an index
secondPrime = morePrimes2 !! 1
-- Get the last value in a list
lastPrime = last morePrimes2
-- Get first x values
firstPrimes = take 3 morePrimes2
-- Get the inverse of x values in a list
removedPrimes = drop 3 morePrimes2


-- MATH OPERATORS
----------------------
addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4


-- PREFIX OPERATORS
----------------------
-- Note: Allow sequential arguments
modEx = mod 5 4


-- INFIX OPERATORS
----------------------
-- Note: Argument, function, Argument. Wrap function in backticks.
modEx2 = 5 `mod` 4


-- WORKING WITH NEGATIVE NUMBERS
----------------------
-- Note: Must be wrapped in parens
negNumEx = 5 + (-4)


-- FUNCTION ARG EXPECTATIONS & TYPE CONVERSION
----------------------
-- Note: sqrt :: Floating a => a -> a
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)


-- MATH FUNCTION EXAMPLES
----------------------
piVal = pi
-- 3.141592653589793

ePow9 = exp 9
-- 8103.083927575384

logOf9 = log 9
-- 2.1972245773362196

squared9 = 9 ** 2
-- 81

truncateVal = truncate 9.999
-- 9

roundVal = round 9.999
-- 10

ceilingVal = ceiling 9.999
-- 10

floorVal = floor 9.999
-- 9

-- Also: sin, cos, tan, asin, atan, acos, sinh, tanh, cosh, asinh, atanh, acosh


-- LOGICAL OPERATORS
----------------------
trueAndFalse = True && False
-- False

trueOrFalse = True || False
-- True

notTrue = not(True)
-- False

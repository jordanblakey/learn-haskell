-- This is a commment.

{-
This is a
multiline comment.
-}

import Data.List
import System.IO

-- GHC COMPILER
----------------------
-- Run the interactive compiler
-- ghci
  -- l: load
  -- r: run
  -- t: get a functions definition
  -- q: quit

-- Compile a Haskell file to executable
-- ghc --make part1.hs

-- Execute a program
-- ./program


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
-- Is x in List
is7InList = 7 `elem` morePrimes2
-- Get max element value
maxPrime = maximum morePrimes2
-- Get min element value
minPrim = minimum morePrimes2
-- Get the product of all elements
prodPrimes = product morePrimes2
-- Make list of even numbers
evenList = [2,4..20]
-- Character List
letterList = ['A', 'B'..'Z']
-- Create an infinite list (lazily calculates requested values from an infinite sequence)
infinPow10 = [10,20..]
-- Repeat value in a List
many2s = take 10 (repeat 2)
-- Replicate a value
many3s = replicate 10 3
-- Cycle through values
cycleList = take 10 (cycle [1,2,3,4,5])
-- Multiply all values by a factor
listTimes2 = [x * 2 | x <- [1..10]]
-- Multiply all values by a factor and conditionally filter values less than 50
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]
-- Take the set of numbers 1 to 500, filter values divisble by 13, filter values divisible by 9
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
-- Create a sorted list
sortedList = sort [9,1,8,3,4,7,6]
-- Use a math operation of elements in multiple lists
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
-- Simple conditional filter
listBiggerThen5 = filter (>5) morePrimes
-- Take from a generated list values matching a condition
eventsUpTo20 = takeWhile (<= 20) [2,4..]
-- Sequentially run an operation on elements of a list
multOfList = foldl (*) 1 [2,3,4,5]
-- perform any operation on each element in a list
pow3List = [3^n | n <- [1..10]]
-- Recursively create lists by sequentially performing an operation on every combination of elements in those lists.
-- This example, when represented as a matrix creates a multiplication table for 1-10
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]


-- TUPLES
----------------------
-- Pairs with elements of any type

-- Define a tuple
randTuple = (1, "Random Tuples")
-- Define a tuple
bobSmith = ("Bob Smith", 52)
-- Get the first element
bobsName = fst bobSmith
-- Get the second element
bobsAge = snd bobSmith
-- Create a list of tuples by matching elements between two input lists at each index
names = ["Bob", "Mary", "Tom"]
addresses = ["123 Main", "234 North", "567 South"]
namesNAddress = zip names addresses


-- LET
----------------------
-- Define a constant with type inferencing
-- let num7 = 7

-- Define a function
-- let getTriple x = x * 3

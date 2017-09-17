import Data.List
import System.IO

-- MULTIPLY BY 4
------------------------------------------
times4 :: Int -> Int
times4 x = x * 4


-- MULTIPLY LIST ELEMENTS BY 4
------------------------------------------
listTimes4 = map times4 [1,2,3,4,5]


-- MULTIPLY ELEMENTS BY 4
------------------------------------------
multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

-- [1,2,3,4] : x = 1 | xs = [2,3,4]
-- [2,3,4] : x = 2 | xs = [3,4]
-- [3,4] : x = 3 | xs = [4]
-- [4] : x = 4 | xs = []
-- Output: [4,8,12,16]


-- CHECK IF STRINGS ARE EQUAL
------------------------------------------
areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False


-- Pass a function inside another function
------------------------------------------
-- Shows that the function takes an Int and will pass its output
-- to another function that takes an Int, then return an Int
doMult :: (Int -> Int) -> Int
-- pass function and Int argument to function
doMult func = func 3
-- store into a constant the return of a function and its argument (another function)
num3Times4 = doMult times4

--
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y
adds3 = getAddFunc 3
fourPlus3 = adds3 4

threePlusList = map adds3 [1,2,3,4,5]

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

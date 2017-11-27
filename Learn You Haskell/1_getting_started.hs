module Baby where

-- Prelude> 
-- Every expression is: it = expression
-- In other words each REPL input is reassigning the variable 'it'


-- Every unit of code in Haskell that returns a value is an "expression"

-- Functions
doubleMe x = x + x
doubleUs x y = x*2 + y*2

-- Conditionals
doubleSmallNumber x = if x > 100
                        then x
                        else x*2

-- Definitions (functions with no arguments)
conanO'Brien = "It's a-me, Conen O'Bren!"

-- Simple 2 argument functions
add x y = x + y
sub x y = x - y
mult x y = x * y
div x y = x / y

-- List Concatenation
string1 = "hello" ++ " " ++ "world!"
list1 = [1..20] ++ [40..60]
-- Note that strings are just lists.
string2 = ['w', 'o'] ++ ['o', 't']

-- Append a character or single number to a list.
-- Note that adding the the beginning of a list is less resource intensive.
list2 = 'A':" small cat."
list3 = 5:[1..5]

buildList = 1:2:3:[]
builtList = [1,2,3]

-- Get List Elements by Index
fromIndex = "This is also a list" !! 6

head' = head [1..10] -- First elem as number
tail' = tail [1..10] -- All but first elem
last' = last [1..10] -- Last elem as number
init' = init [1..10] -- Return all but last elem
take' = take 3 [1..10] -- Take the first x elems in list
drop' = drop 8 [1..10] -- Unset the first x elems in list

maximum' = maximum [1..10] -- Return the largest elem in list
minimum' = minimum [1..10] -- Return the smallest elem in list
sum' = sum [1..10] -- Sum of list elems
product' = product [1..10] -- Product of list elems
elem' = elem 4 [1..10] -- Return true if in list, else return false

range1 = [1..10]
range2 = ['a'..'z']
range3 = ['A'..'Z'] -- Return a list containing the specified range
range4 = [2,4..100] -- Return a list range with a step
range5 = [10,20..] -- Return an infinite list of with start and step
takeRange = take 10 [10,20..] -- Take the first 10 multiples of 10.

cycle1 = take 9 (cycle [1..3]) -- Create an infinite list that cycles through its arg
cycle2 = take 12 (cycle "LOL ") -- Note that the second function requires parens

repeat1 = take 10 $ repeat 5 -- Repeat creates an infinite list with only the arg
replicate1 = replicate 3 10 -- Create a list containing x iterations of y

-- List Comparison (lexicographical order)
lcomp1 = [3,2,1] > [2,1,0] -- First elem larger, true.
lcomp2 = [3,2,1] > [2,10,100] -- First elem larger, true.
lcomp3 = [3,4,2] > [3,4] -- Has one more element, true.
lcomp4 = [1,2,3] == [1,2,3] -- True

-- Basic List Functions
getLength = length [1..10]
checkListNull = null [1..10]
checkListNull2 = null []
reverseList = reverse [1..5]

-- List Comprehensions
comp1 = [x*2 | x <- [1..10]]
comp2 = [x*2 | x <- [1..10], x*2 >=12] --take x*2 from 1-10 where x*2 >=12
comp3 = [ x | x <- [50..100], x `mod` 7 == 3] -- take x from 50-100 where x/7 remainder 3
comp4 xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
comp5 = [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]
comp6 = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
comp7 = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
getLen xs = sum [1 | _ <- xs] -- Create a list of equal length to input of all 1 elems, then sum (length of the list)
removeNonUppercase st = [ c | c <- st, elem c ['A'..'Z']] -- IdontLIKEEGGS -> ILIKEEGGS
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,11,3,2,6,7]]
evensFromListOfLists xxs = [[ x | x <- xs, even x ] | xs <- xxs]

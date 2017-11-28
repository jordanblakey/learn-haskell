# learn-haskell
## About Haskell
Haskell is a standardized, general-purpose purely functional programming language, with non-strict semantics and strong static typing. It is named after logician Haskell Curry. The latest standard of Haskell is Haskell 2010. Haskell features a type system with type inference and lazy evaluation. Type classes first appeared in the Haskell programming language.

<hr>

## GHC Compiler Commands

**Run the interactive compiler**<br>
`ghci`: start<br>
  `l:` load<br>
  `r:` run file, reload<br>
  `t:` get a functions definition<br>
  `q:` quit

**Compile a Haskell file to executable**<br>
`ghc --make part1.hs`

**Execute a program<br>**
`./program`

<hr>

## Features of Haskell
#### Statically typed
Every expression in Haskell has a type which is determined at compile time. All the types composed together by function application have to match up. If they don't, the program will be rejected by the compiler. Types become not only a form of guarantee, but a language for expressing the construction of programs.

#### Purely functional
Every function in Haskell is a function in the mathematical sense (i.e., "pure"). Even side-effecting IO operations are but a description of what to do, produced by pure code. There are no statements or instructions, only expressions which cannot mutate variables (local or global) nor access state like time or random numbers.

#### Type inference
You don't have to explicitly write out every type in a Haskell program. Types will be inferred by unifying every type bidirectionally. However, you can write out types if you choose, or ask the compiler to write them for you for handy documentation.

#### Concurrent
Haskell lends itself well to concurrent programming due to its explicit handling of effects. Its flagship compiler, GHC, comes with a high-performance parallel garbage collector and light-weight concurrency library containing a number of useful concurrency primitives and abstractions.

#### Lazy
Functions don't evaluate their arguments. This means that programs can compose together very well, with the ability to write control constructs (such as if/else) just by writing normal functions. The purity of Haskell code makes it easy to fuse chains of functions together, allowing for performance benefits.

#### Packages
Open source contribution to Haskell is very active with a wide range of packages available on the public package servers.


## Learn You Haskell: Getting Started
``` haskell
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
```

## Learn You Haskell: Types and Typeclasses

``` haskell
--------------------------------------------------------------------------------
-- TYPE & TYPECLASSES SYSTEM
--------------------------------------------------------------------------------

-- '::' means 'has type of'

-- :t 'a'
-- 'a' :: Char

-- :t True
-- True :: Bool

-- :t "Hello!"
-- "Hello!" :: [Char]

-- :t (True, 'a')
-- (True, 'a') :: (Bool, Char)

-- :t 4 == 5
-- 4 == 5 :: True

-- This functions type signature means that it takes a List of Chars and returns a List of Chars
removeNoneUppercase :: [Char] -> [Char]
removeNoneUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- Another example: this function takes 3 Ints and returns an Int
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

--------------------------------------------------------------------------------
-- TYPES
--------------------------------------------------------------------------------
-- 'Int' stands for 32-bit integer

-- 'Integer' stands for unbounded integer
factorial :: Integer -> Integer
factorial n = product [1..n]
fact1 = factorial 50
-- returns 30414093201713378043612608166064768844377641568960512000000000000

-- 'Float' is a real number with single precision
circumference :: Float -> Float
circumference r = 2 * pi * r
circ1 = circumference 4.0

-- 'Double' is a real floating point with double the precision!
circumference' :: Double -> Double
circumference' r = 2 * pi * r
circ2 = circumference' 4.0

-- 'Bool' is a bolean type. It can only have two values: True and False

-- 'Char' represents a character. It's denoted by single quotes. A list of characters is a string.

--------------------------------------------------------------------------------
-- Type Variables
--------------------------------------------------------------------------------

-- What is the type of function 'head'?
-- :t head
-- head :: [a] -> a
-- In this case '[a]' is a 'type variable' and can take any type.

-- Another example
-- :t fst
-- fst :: (a, b) -> a
-- This means that fst takes a tuple with elements of any type.

--------------------------------------------------------------------------------
-- Type Classes
--------------------------------------------------------------------------------
-- Equality operator is a function. Every operator is...
-- :t (==)
-- (==) :: Eq a => a -> a -> Bool
-- Everything before the => is called a 'class constraint.'
-- This reads "this function takes any two values of the same type and returns a Bool"
-- The type of those two values must be members of the Eq typeclass.
-- The elem function has a type of (Eq a) => a -> [a] -> Bool because it uses == over a list to check whether some value we're looking for is in it.

-- ALL TYPE CLASSES
  -- Eq: can be tested for equality
  ----------------------------------------
  -- ghci> 5 == 5
  -- ghci> 5 /= 5
  -- ghci> 'a' == 'a'


  -- Ord: have an ordering
  ----------------------------------------
  -- Ordering is a type that can be GT, LT or EQ, meaning greater than, lesser than and equal, respectively.
  -- ghci> "Abra" < "Zebra": True
  -- ghci> "Abra" `compare` "Zebra": LT
  -- ghci> 5 >= 2: True
  -- ghci> 5 `compare` 3: GT

  -- Show: can be presented as strings
  ----------------------------------------
  -- ghci> show 3: "3"
  -- ghci> show True: "True"

  -- Read: opposite to show, a string that can be inferred to be another type.
  ----------------------------------------
  -- ghci> read "True" || False: True
  -- ghci> read "8.2" + 3.8: 12.0
  -- ghci> read "[1,2,3,4]" ++ [3]: [1,2,3,4,3]
  -- :t read
  -- read :: (Read a) => String -> a

  -- 'read' requires a non-string type to inference from
  -- Adding a type annotation, we can bypass this

  -- ghci> read "5" :: Int: 5
  -- ghci> read "5" :: Float: 5.0
  -- ghci> (read "5" :: Float) * 4: 20.0
  -- ghci> read "[1,2,3,4]" :: [Int]: [1,2,3,4]
  -- ghci> read "(3, 'a')" :: (Int, Char): (3, 'a')


  -- Enum members are sequentially ordered types — they can be enumerated.
  ----------------------------------------
  -- ghci> ['a'..'e']: "abcde"
  -- ghci> [LT .. GT]: [LT,EQ,GT]
  -- ghci> [3 .. 5]: [3,4,5]
  -- ghci> succ 'B': 'C'

  -- Bounded members have an upper and a lower bound.
  ----------------------------------------
  -- ghci> minBound :: Int: -2147483648
  -- ghci> maxBound :: Char: '\1114111'
  -- ghci> maxBound :: Bool: True
  -- ghci> minBound :: Bool: False
  -- ghci> maxBound :: (Bool, Int, Char): (True,2147483647,'\1114111')

  -- Num is a numeric typeclass.
  ----------------------------------------
  -- ghci> :t 20: 20:: (Num t) => t
  -- ghci> 20 :: Int: 20
  -- ghci> 20 :: Integer: 20
  -- ghci> 20 :: Float: 20.0
  -- ghci> 20 :: Double: 20.0
  -- ghci> :t (*): (*) :: (Num a) => a -> a -> a
  -- (5 :: Int) * (6 :: Integer) will produce an error because specific different types are specified.

  -- Integral is also a numeric typeclass. Num includes all numbers, including real numbers and integral numbers, Integral includes only integral (whole) numbers. In this typeclass are Int and Integer.
  ----------------------------------------
  -- ghci> fromIntegral (length [1,2,3,4]) + 3.2
  -- Convert an Int to type Num using fromIntegral

  -- Floating includes only floating point numbers, so Float and Double.
  ----------------------------------------
  ```

## Tryhaskell.com Command History
``` haskell

Type Haskell expressions in here.
λ 23 * 4
92
:: Num a => a
λ reverse "hello"
"olleh"
:: [Char]
λ help
λ 5+7
12
:: Num a => a
λ jordan
Not in scope: ‘jordan’
λ "jordan"
"jordan"
:: [Char]
λ [1,2,3]
[1,2,3]
:: Num t => [t]
λ sort[1,2,3]
[1,2,3]
:: (Num a, Ord a) => [a]
λ sort "jordan"
"adjnor"
:: [Char]
λ (23, "jordan")
(23,"jordan")
:: Num t => (t, [Char])
λ fst (23, "jordan")
mueval-core: Time limit exceeded
ExitFailure 1
λ fst (23,"jordan")
23
:: Num a => a
λ let x = 4 in x * x
16
:: Num a => a
λ let villain = (23, "jordan") in fst villain
23
:: Num a => a
λ 'a' : []
"a"
:: [Char]
λ ['a', 'b']
"ab"
:: [Char]
λ 'a' : 'b' : []
"ab"
:: [Char]
λ 'a' : 'b' : [] == ['a', 'b']
True
:: Bool
λ ['a', 'b', 'c'] == "abc"
True
:: Bool
λ map (+1) [1..5]
[2,3,4,5,6]
:: (Enum b, Num b) => [b]
λ map (*99) [1..10]
[99,198,297,396,495,594,693,792,891,990]
:: (Enum b, Num b) => [b]
λ map (/5) [13,24,52,42]
[2.6,4.8,10.4,8.4]
:: Fractional b => [b]
λ (1, "Jordan")
(1,"Jordan")
:: Num t => (t, [Char])
λ let square x = x * x in square 10
100
:: Num a => a
λ let add 1 x = x + 1 in add1 5
Not in scope: ‘add1’
Perhaps you meant ‘add’ (line 1)
λ let add1 x = x + 1 in add1 5
6
:: Num a => a
λ let second x = snd x in second (3,4)
4
:: Num b => b
λ let square x = x * x in map square [1..10]
[1,4,9,16,25,36,49,64,81,100]
:: (Enum b, Num b) => [b]
λ let add 1 x = x + 1 in map add1 [1,5,7]
Not in scope: ‘add1’
Perhaps you meant ‘add’ (line 1)
λ let add1 x = x + 1 in map add1 [1,5,7]
[2,6,8]
:: Num b => [b]
λ let take5s = filter (==5) in take5s [1,5,2,5,3,5]
[5,5,5]
:: (Eq a, Num a) => [a]
λ let take5s = filter (==5) in take5s [[1,5],[5],[1,1],5,3,5]
No instance for (Show t0)
arising from a use of ‘show_M17224616575368211508209’
The type variable ‘t0’ is ambiguous
Note: there are several potential instances:
instance Show a => Show (Const a b)
-- Defined in ‘Control.Applicative’
instance Show a => Show (ZipList a)
-- Defined in ‘Control.Applicative’
instance Show GeneralCategory -- Defined in ‘Data.Char’
...plus 105 others
In the expression:
show_M17224616575368211508209
(let e_155515511535 = let ... in take5s [...] in e_155515511535)
In an equation for ‘e_1172246165753682115082091722461657536821150820915551551153555515511535155515511535’:
e_1172246165753682115082091722461657536821150820915551551153555515511535155515511535
= show_M17224616575368211508209
(let e_155515511535 = let ... in take5s ... in e_155515511535)
In the expression:
(let
e_1172246165753682115082091722461657536821150820915551551153555515511535155515511535
λ let take5s = filter (==5) in take5s [[1,5],[5],[1,1]]
No instance for (Show t0)
arising from a use of ‘show_M73062188955560378808229’
The type variable ‘t0’ is ambiguous
Note: there are several potential instances:
instance Show a => Show (Const a b)
-- Defined in ‘Control.Applicative’
instance Show a => Show (ZipList a)
-- Defined in ‘Control.Applicative’
instance Show GeneralCategory -- Defined in ‘Data.Char’
...plus 105 others
In the expression:
show_M73062188955560378808229
(let e_155515511 = let ... in take5s [...] in e_155515511)
In an equation for ‘e_1730621889555603788082297306218895556037880822915551551155515511155515511’:
e_1730621889555603788082297306218895556037880822915551551155515511155515511
= show_M73062188955560378808229
(let e_155515511 = let ... in take5s ... in e_155515511)
In the expression:
(let
e_1730621889555603788082297306218895556037880822915551551155515511155515511
= show_M73062188955560378
λ let take5s = filter (==5) in map take5s [[1,5],[5],[1,1]]
[[5],[5],[]]
:: (Eq a, Num a) => [[a]]
λ toUpper 'a'
'A'
:: Char
λ toUpper "Chris"
Couldn't match expected type ‘Char’ with actual type ‘[Char]’
In the first argument of ‘toUpper’, namely ‘"Chris"’
In the expression: toUpper "Chris"
λ map toUpper "Chris"
"CHRIS"
:: [Char]
λ let (a,b) = (10,12) in a * 2
20
:: Num a => a
λ let (a:b:c:[]) = "xyz" in a
'x'
:: Char
λ let "abc" = "xyz" in a
Not in scope: ‘a’
λ let [a,b,c] = "xyz" in a
'x'
:: Char
λ let [a,b,c] = "xyz" in a
'x'
:: Char
λ let (a:_:_:_) = "xyz" in a
'x'
:: Char
λ let (a:b:c:d) = "xyz" in a
'x'
:: Char
λ let (a:(b:(c:d))) = "xyz" in a
mueval-core: Time limit exceeded
ExitFailure 1
λ let (a:(b:(c:d))) = "xyz" in a
'x'
:: Char
λ let (a:_) = "xyz" in a
'x'
:: Char
λ let (x(a:_)) = (10, "abc") in a
<hint>:1:6: Parse error in pattern: x
λ let (x:(a:_)) = (10, "abc") in a
Couldn't match expected type ‘[t1]’
with actual type ‘(Integer, [Char])’
Relevant bindings include
x :: t1 (bound at <interactive>:1:6)
a :: t1 (bound at <interactive>:1:9)
In the expression: (10, "abc")
In a pattern binding: (x : (a : _)) = (10, "abc")
In the expression: let (x : (a : _)) = (10, "abc") in a
λ let (x,(a:_)) = (10, "abc") in a
'a'
:: Char
λ let (_,(a:_)) = (10,"abc") in a
'a'
:: Char
λ let _:_:c_ = "abcd" in c
Not in scope: ‘c’
λ let _:_:c:_ = "abcd" in c
'c'
:: Char
λ let [a,b,c] = "cat" in (a,b,c)
('c','a','t')
:: (Char, Char, Char)
λ let abc@(a,b,c) = (10,20,30) in (abc,a,b,c)
((10,20,30),10,20,30)
:: (Num t, Num t1, Num t2) => ((t, t1, t2), t, t1, t2)
```

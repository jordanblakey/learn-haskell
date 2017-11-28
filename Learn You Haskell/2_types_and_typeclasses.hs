module TypesAndTypeClasses where

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
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

import Data.List
import System.IO
-- import SampFunctions

doubleEvenNumber y =
    if (y `mod` 2 /= 0)
      then y
      else y * 2

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                  deriving Show

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True
barryInOF = print(barryBonds Outfield)

data Customer = Customer String String Double
  deriving Show

tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main" 20.50

-- getBalance :: Customer -> doubleEvenNumber
-- getBalance (Customer _ _ b) = b


data RPS = Rock | Paper | Scissors
shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper beats Rock"
shoot Paper Scissors = "Paper loses to Scissors"
shoot Paper Paper = "Paper ties Paper"
shoot Scissors Rock = "Scissors loses to Rock"
shoot Scissors Paper = "Scissors beats Paper"
shoot Scissors Scissors = "Scissors ties Scissors"
shoot Rock Paper = "Rock loses to Paper"
shoot Rock Scissors = "Rock beats Scissors"
shoot Rock Rock = "Rock ties Rock"
-- shoot _ _ = "Unexpected Input"

--                  x     y     radius            x TL  y TL  x BR  y BR
data Shape = Circle Float Float Float | Rectangle Float Float Float Float

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle xt yt xb yb) = (abs (xb - xt)) * (abs (yt - yb))

sumValue = putStrln (show (1+2))

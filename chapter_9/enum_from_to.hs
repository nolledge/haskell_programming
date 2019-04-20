module EnumFromTo where

eftBool :: Bool -> Bool -> [Bool]
eftBool True False = []
eftBool False False = [False]
eftBool True True = [True]
eftBool False True = [False, True]

eftOrd :: Ordering
       -> Ordering
       -> [Ordering]
eftOrd LT LT = [LT]
eftOrd LT EQ = [LT, EQ]
eftOrd LT GT = [LT, EQ, GT]
eftOrd EQ LT = []
eftOrd EQ EQ = [EQ]
eftOrd EQ GT = [EQ, GT]
eftOrd GT LT = []
eftOrd GT EQ = []
eftOrd GT GT = [GT]

eftChar :: Char -> Char -> [Char]
eftChar a b 
  | a > b     = []
  | a == b    = [a]
  | otherwise = a : eftChar (succ a) b
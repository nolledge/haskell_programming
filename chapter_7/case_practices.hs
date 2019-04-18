module CasePracices where

functionC x y =
    case x > y of
      True -> y
      False -> y

ifEvenAdd2 n = 
    case isEven of
      True -> n + 2
      False -> n
    where isEven = mod n 2 == 0

numx x =
    case compare x 0 of
      LT -> -1
      GT -> 1
      EQ -> 0

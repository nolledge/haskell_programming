# Chapter Exercises

1.) c
2.) a
3.) b
4.) c

## Determine the Type

see .hs file

## Type variable or specific type constructor

2)
  *fully polymorphic
  * concrete

3) 
  * fully polymorphic
  * constrained polymorphic
  * concrete
4)
  * fully polymorphic 
  * concrete


## Write a type signature

1) functionH :: [a] -> a
2) functionC :: Eq(a, b) => a -> b -> Bool // wrong
   functionC :: Ord a => a -> a -> Bool
3) functionS :: (a, b) -> b

## Given a type write the function

i :: a -> a
i a = A

c :: a -> b -> a
c a b = a

c'' :: b -> a -> b
c'' b a = b

c' :: a -> b ->b
c' a b = b

r :: [a] -> [a]
r l = take 3 l ++ take 1 l
or
r l = l

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC $ aToB a

a :: (a -> c) -> a -> a
a aToC a = a

a :: (a -> b) -> a -> b
a aToB a = aToB a

## Type Kwon-Do

1) h i = g $ f i
2) e a = w $ q a
3) xForm (x, y) = (xz x, yz y)

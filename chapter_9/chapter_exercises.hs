module ChapterExercises where

import Data.Char

keepUpper :: String -> String
keepUpper s = filter isUpper s

capFirst :: String -> String
capFirst [] = []
capFirst (x : xs) = (toUpper x) : xs


capAll :: String -> String
capAll [] = []
capAll (x : xs) = (toUpper x):[] ++ capAll xs

firstLetter :: String -> Char
firstLetter s = toUpper $ head s

firstLetterComp :: String -> Char
firstLetterComp s = toUpper . head $ s

firstLetterCompP :: String -> Char
firstLetterCompP = toUpper . head

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = 
    if x
    then x
    else myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny pred (x:xs)
  | pred x = True
  | otherwise = myAny pred xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem e (x:xs) = x == e

myElem2 :: Eq a => a -> [a] -> Bool
myElem2 e l  = myAny (== e) l

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = myReverse xs ++ x:[]

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap aToBList as = squish $ map aToBList as


squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering)
            -> [a] -> a
myMaximumBy _ (x:[]) = x
myMaximumBy cmp (x: xs) = 
    let r = myMaximumBy cmp xs in
     case cmp x r of
                              GT -> x
                              EQ -> x
                              LT -> r


myMinimumBy :: (a -> a -> Ordering)
            -> [a] -> a
myMinimumBy _ (x:[]) = x
myMinimumBy cmp (x: xs) = 
    let r = myMinimumBy cmp xs in
     case cmp x r of
                              GT -> r
                              EQ -> r
                              LT -> x


myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare


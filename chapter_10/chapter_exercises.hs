module ChapterExercises where

import Data.Bool

stops = "pbtkdkg"
vowels = "aeiou"


oneA = [(x, y, z) | x <- stops, y <- vowels, z <- stops]
oneB = [(x, y, z) | x <- stops, y <- vowels, z <- stops, x == 'p']

oneC :: [[Char]] -> [[Char]] -> [([Char], [Char], [Char])]
oneC n v = [(x, y, z) | x <- n, y <- v, z <- n]

-- determines avg length of words
seekritFunc :: [Char] -> Int
seekritFunc x =
    div (sum (map length (words x)))
        (length (words x))

avgLength s = fromIntegral totalLength / fromIntegral (length . words $ s)
    where totalLength = length (filter (/= ' ') s)

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = myOr . map f

myElem1 :: Eq a => a -> [a] -> Bool
myElem1 e l = foldr (||) False (map (== e) l)

myElem2 :: Eq a => a -> [a] -> Bool
myElem2 e = myAny (== e)

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myMap :: (a -> b) -> [a] -> [b]
myMap f l = foldr ((:) . f) [] l

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f l = foldr (\a b -> if f a then a : b else b) [] l

squish :: [[a]] -> [a]
squish = foldr (flip $ foldr (:)) []

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\e a -> foldr (:) a (f e)) []

squishAgain :: [[a]] -> [a]
squishAgain = squish . id

myMaximumBy :: (a -> a -> Ordering)
            -> [a]
            -> a
myMaximumBy f l = foldr (\e acc -> if f e acc == GT then e else acc) (head l) l

myMinimumBy :: (a -> a -> Ordering)
            -> [a]
            -> a
myMinimumBy f l = foldr (\e acc -> if f e acc == LT then e else acc) (last l) l

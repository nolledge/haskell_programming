module WordNumbers where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord 0 = "zero"
digitToWord 1 = "one"
digitToWord 2 = "two"
digitToWord 3 = "three"
digitToWord 4 = "four"
digitToWord 5 = "five"
digitToWord 6 = "six"
digitToWord 7 = "seven"
digitToWord 8 = "eight"
digitToWord 9 = "nine"
digitToWord _ = "not a digit"


digits :: Int -> [Int]
digits n = go n []
    where go number digits
            | number <= 0 = digits
            | otherwise = go (quot number 10) ((mod number 10):[] ++ digits)

wordNumber :: Int -> String
wordNumber n = concat (intersperse "-" wordlist)
    where wordlist = map digitToWord (digits n)

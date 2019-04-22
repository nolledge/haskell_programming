module Filtering where

multiplesOfThree x= filter (\x -> rem x 3 == 0) x

howManyMultiplesOfThree = length . multiplesOfThree


filterWord :: String -> [String] -> [String]
filterWord word list = filter (\x -> x /= word) list


removeArticles s = filterArticles $ words s
    where filterArticles = filterWord "the" . filterWord "a" .filterWord "an"

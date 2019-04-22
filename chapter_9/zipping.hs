module Zipping where

myZip :: [a] -> [b] -> [(a, b)]
myZip [] b = []
myZip a [] = []
myZip (x: xs) (y: ys) = [(x, y)] ++ myZip xs ys


myZipWith :: (a -> b -> c) 
          -> [a] -> [b] -> [c]
myZipWith f [] b = []
myZipWith f a [] = []
myZipWith f (x: xs) (y: ys) = [f x y] ++ myZipWith f xs ys

myZip2 a b = myZipWith (,) a b

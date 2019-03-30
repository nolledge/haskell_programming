module ChapterExercises where

-- myLength :: [a] -> Int

-- 2: a) 5, b)3, c) 30
--
--
-- 3) 6 /3 works
-- 3) 6 / length [1, 2, 3] does not works
-- operator (/) requires an instance of Fractional which
-- does not exist for Integer
--
-- 4) div 6 $ length [1, 2, 3] does work. div returns Integral
-- 5) Bool, expectr True
-- 6) Bool, expectr False
-- 7.1) True
-- 7.2) Error, mixed list
-- 7.3) 2 + 3 = 5
-- 7.4) False
-- 7.5) Error

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome a = a == reverse a

myAbs :: Integer -> Integer
myAbs a = if a < 0 then a * (-1) else a

f :: (a,b) -> (c, d) -> ((b, d), (a, c))
f (a,b) (c,d) = ((b, d), (a, c))

-- Correcting Syntax
x = (+)
fn xs = w `x` 1
     where w = length xs

id2 x = x

fst2 (a, b) = a

-- Match the function names to their types
--
-- 1) c
-- 2) b
-- 3) a
-- 4) d

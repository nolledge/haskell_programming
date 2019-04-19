module ChapterExercises where

sumup :: Integral a => a -> a
sumup 0 = 0
sumup n = n + sumup (n -1)


myMultiplication :: Integral a => a -> a -> a
myMultiplication a b = go a b 0
    where go x y s
            | y == 0 = s
            | otherwise = go a (y -1) (s + x)


data DividedResult = Result Integer | DividedByZero
    deriving Show
dividedBy :: Integral a => a -> a -> DividedResult
dividedBy num denom
  | denom == 0 = DividedByZero
  | num > 0 && denom > 0 || num < 0 && denom < 0 = Result(r)
  | otherwise = Result(-r)
  where r = go (abs num) (abs denom) 0
        go n d count 
          | n < d = count
          | otherwise =
              go (n - d) d (count + 1)


mc91 :: Integral a => a -> a
mc91 n
  | n > 100 = n - 10
  | otherwise = 91

module ChapterExercises where

tensDigit :: Integral a => a -> a
tensDigit x = d
    where (xLast, _) = x `divMod` 10
          (_, d) = xLast `divMod` 10

hundredsDigit :: Integral a => a -> a
hundredsDigit = tensDigit . (`div` 10)


foldBool :: a -> a -> Bool -> a
foldBool x y z
  | z = y
  | otherwise = x


foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z =
    case z of
      False -> x
      True -> y

g :: (a -> b) -> (a, c) -> (b, c)
g aToB (a, c) = (aToB a, c)


roundTrip :: (Show a, Read a) => a -> a
roundTrip = read . show

roundTrip2 :: (Show a, Read b) => a -> b
roundTrip2 = read . show

main = do
  print (roundTrip2 4 :: Int)

# Exercises: Artful Dodgy

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1

oneIsTwo :: Num a => a -> a
oneIsTwo = (flip dodgy) 2

dodgy 1 0 :: Num a => a

2.)

dodgy 1 1 :: Num a => a
11

dodgy 2 2 :: Num a => a
22

dodgy 1 2 :: Num a => a
21 

dodgy 1 2 :: Num a => a
12

oneIsOne 1 :: Num a => a
11


oneIsOne 2 :: Num a => a
21


oneIsTwo 1 :: Num a => a
21

oneIsTwo 2 :: Num a => a
22

oneIsOne 3 :: Num a => a
31

oneIsTwo 3 :: Num a => a
23

{-# LANGUAGE NoMonomorphismRestriction #-}
module DetermineTheType where

a = (* 9) 6 -- | Num a => a
b = head [(0, "dodge"), (1, "kitteh")] -- | Num a => (a, [Char])
c = head [(0:: Integer, "dodge"), (1, "kitteh")] -- | (Integer, [Char])
d = if False then True else False -- | Bool (False)
e = length [1, 2, 3, 4, 5] -- | Int
f = (length [1, 2, 3, 4, 5]) > (length "TACOCAT") -- | Bool

x1 = 5
y1 = x1 + 5
w1 = y1 * 10 -- | Num a => a

x2 = 5
y2 = x2 + 5
z2 y2 = y2 * 10 -- | Num a => a -> a

x3 = 5
y3 = x3 + 5
f3 = 4 / y3 -- | Fractional a => a

x4 = "asdf"
y4 = "4sdf"
z4 = "hfw9erf"
f4 = x4 ++ y4 ++ z4 -- | [Char]


bigNum = (^) 5 $ 10
wahoo = bigNum * 10 -- | bigNum $ 10 wont compile, cant apply value to value

x5 = print
y5 = print "something"
z5 = x5 "hello world" -- | works

-- a = (+)
-- b = 5
-- c = b 10  | will not compile
-- d = c 200 | will not compile

a6 = 12 + b6 -- | wont compile, free arg
b6 = 1000 * c6 -- | same here


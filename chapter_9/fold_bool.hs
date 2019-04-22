module FoldBool where

import Data.Bool

negateThree = map (\x -> bool x (-3) (x == 3)) [1..10]

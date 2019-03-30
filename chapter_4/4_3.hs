module Chapter4_3 where

data Mood = Blah | Woot deriving Show

changeMood Blah = Woot
changeMood    _ = Blah

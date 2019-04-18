module ChapterExercises where

import Data.List
-- | Multiple Choice
-- 1) c
-- 2) a,c
-- 3) a (>) :: Ord a -> a -> a -> Bool
-- 4) c
-- 5) a
--
-- | Does it typecheck?
-- 1) Does not, instance of Show missing

data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- | 2 Does not compile, instance of Eq missing

data Mood = Blah | Woot deriving (Show, Eq)

settleDown x = if x == Woot then Blah else x

-- a) Acceptable inputs are of type Mood
-- b) It wont compile, Num is not of type Mood
-- c) It will fail, Ord instance missing
--
-- 3) It will typecheck but s1 is only partially applied

type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

-- | Given a datatype declaration, what can we do?
--
data Rocks = Rocks String deriving (Eq, Show)

data Yeah = Yeah Bool deriving (Eq, Show)

data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- Wont Typecheck Data constructors missing for nestend types
-- Fixed:
phew = Papu (Rocks "test") (Yeah True)

-- Will typecheck
truth = Papu (Rocks "chomskydoz")
             (Yeah True)
-- Will typecheck
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'
-- Will not typecheck Ord instance missingA
--
-- | Match the types
--
-- 2) Wont match, Num broader than Fractional
-- 3) Will Work Fractional Broader than Float
-- 4) Float/Double has instance for RealFrac, should work
-- 5) can be substituted
-- 6) Can be substituted
-- 7) Can not be substituted
-- 8) Can not be substituted
-- 9) Can be substituted, bud should not
-- 10) Can be substituted
-- 11) Can not be substituted


-- | Type Kwon Do Two 
-- 1
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk aToB a b = aToB a == b

-- 2
arith :: Num b
      => (a -> b)
      -> Integer
      -> a
      -> b

arith aToB int a = aToB a


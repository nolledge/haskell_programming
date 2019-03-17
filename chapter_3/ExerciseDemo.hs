module ExerciseDemo where

addEx :: String -> String
addEx x = x ++ "!"

charFour :: String -> Char
charFour x = x !! 4

dropNine :: String -> String
dropNine x = drop 9 x

letterIndex :: Int -> Char
letterIndex i = "Curry is awesome!" !! i

rvrs :: String -> String
rvrs s = dropNine s ++ " " ++ take 2 (drop 6 s) ++ " " ++ take 5 s

main :: IO ()
main = print $ rvrs "Curry is awesome"

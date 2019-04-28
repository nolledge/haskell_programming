# Exercises: Understanding folds

1. foldr (*) [1..5]


b, c

2. Write out the evaluation steps for

foldl (flip (*)) 1 [1..3]

foldl f z [] = z
foldl f z (x:xs) = foldl f (f z x) xs

(((1 * 1) * 2) * 3)

3. 

c

4. 

a


5. 

a) foldr (++) "" ["woot", "WOOT", "woot"]
b) foldr max [] $ words "fear lis the little death"
c) foldr (&&) True [False, True]
d) no
e) foldr ((++) . show) "" [1..5]
f) foldl const 'a' [1..5]
g) foldl const 0 "tacos"
h) foldl (const) 0 "burritos"
i) foldl const 'z' [1..5]

module FaerfulSymmetry where

myWords :: String -> [String]
myWords s = go s []
    where go [] res = res
          go a res = go (drop 1 (dropWhile (/= ' ') a)) (res ++ (takeWhile (/= ' ') a): [])

splitStringBy :: String -> Char -> [String]
splitStringBy string seperator = go string []
    where go [] res = res
          go a res = go (drop 1 (dropWhile (/= seperator) a)) (res ++ (takeWhile (/= seperator) a): [])


myLines :: String -> [String]
myLines string = splitStringBy string '\n'

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen ="Could frame thy fearful\
    \ symmetry?"

sentences = firstSen ++ secondSen ++ thirdSen
        ++ fourthSen


shouldEqual = 
    ["Tyger Tyger, burning bright"
    ,"In the forests of the night"
    ,"What immortal hand or eye"
    ,"Could frame thy fearful symmetry?"
    ]

main :: IO ()
main = 
    print $
         show (myLines sentences == shouldEqual)


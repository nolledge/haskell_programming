module WillTheyWork where

-- | yes it will work to use max on two ints
numOne = max (length [1, 2, 3]) (length [8, 9, 10, 11, 12])

-- | I think thos nums will default to int and be compared
numTwo = compare (3 * 4) (3 * 5)

-- | Will not work, cant compare string with Bool
-- numThree = compare "Julie" True

-- | will work on two ints
numFour = (5 + 3) > (3 + 6)

module ChapterExercises where
    -- Parans: make expressions more explicit
result1 = 2 + 2 * 3 - 1 == 2 + (2 * 3) -1
result2 = ((^) 10 $ 1 + 1) == ((^) 10 (1 + 1))
result3 = (2 ^ 2 * 4 ^ 5 +1) == ((2 ^ 2) * (4 ^ 5) + 1 )

    -- Equevialent expressions
result4 = 1 + 1 == 2
result5 = 10 ^ 2 == 10 + 9 * 10
result6 = (400 - 37) /= ((-) 37 400)
-- (100 `div` 3) /= (100 / 3)
result7 = 2 * 5 + 18 /= 2 * (5 + 18)


waxOn = x * 5 where
    z = 7
    y = z + 8
    x = y ^ 2

triple x = x * 3

waxOff x = triple x



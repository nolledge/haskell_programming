module Fibonacci where

fib :: Integral a => a -> a
fib 1 = 1
fib 2 = 1
fib n = fib (n - 1) + fib (n - 2)

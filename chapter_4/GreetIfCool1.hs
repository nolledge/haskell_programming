module GreetIfCool where

greetIfCool :: String -> IO ()

greetIfCool coolness =
    if cool
       then putStrLn "very cool"
    else
        putStrLn "not cool"
    where cool = 
            coolness == "cool"

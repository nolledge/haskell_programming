module Cipher where

import Data.Char
import Data.Bool

encodeCaesarVar :: Int -> String -> String
encodeCaesarVar offset = map (encodeOrKeep . toLower)
    where encodeOrKeep c = bool (encode c) ' ' (c == ' ')
          encode = chr . shift . ord
          shift s = (mod (s - 96 + offset) 26) + 96

encodeCaesar :: String -> String
encodeCaesar = encodeCaesarVar 3

decodeCaesar :: String -> String
decodeCaesar = encodeCaesarVar (26 - 3)

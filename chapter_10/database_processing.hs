module DatabseProcessing where

import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate UTCTime
                  deriving (Eq, Ord, Show)

theDatabase:: [DatabaseItem]
theDatabase =
    [ DbDate (UTCTime
              (fromGregorian 1911 5 1)
  (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbString "Hello, world!"
  , DbDate (UTCTime
             (fromGregorian 1921 5 1)
             (secondsToDiffTime 34123))
    ]

filterDbDate :: [DatabaseItem]
             -> [UTCTime]
filterDbDate l = foldl extract [] l
    where extract acc (DbDate t) = t : acc
          extract acc _ = acc


filterDbNumber :: [DatabaseItem]
               -> [Integer]
filterDbNumber l = foldl extract [] l
    where extract acc (DbNumber n) = n : acc
          extract acc _ = acc

mostRecent :: [DatabaseItem]
           -> UTCTime
mostRecent l = maximum (filterDbDate l)

sumDb :: [DatabaseItem]
      -> Integer
sumDb l = sum (filterDbNumber l)

avgDb :: [DatabaseItem]
      -> Integer
avgDb l = (div) (sumDb l) (toInteger . length $ l)

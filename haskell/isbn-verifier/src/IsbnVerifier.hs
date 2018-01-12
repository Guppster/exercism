module IsbnVerifier (isbn) where

import Data.Char (digitToInt)

isbn :: String -> Bool
isbn s =
  length digits == 10
  && notElem 10 first9
  && (0 == total `mod` 11)
  where digits = map toInt $ filter isDigit s
        first9 = take 9 digits
        total = sum $ zipWith (*) digits [10,9..1]

isDigit :: Char -> Bool
isDigit 'X' = True
isDigit c =
  '0' <= c && c <= '9'

toInt :: Char -> Int
toInt 'X' = 10
toInt c = digitToInt c


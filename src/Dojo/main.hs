module Dojo.Main where

data Book = Book1 | Book2 | Book3 deriving (Eq, Show)

data Money a = USD a deriving (Eq, Show)

price :: Fractional b => [Book] -> Money b

price [a,b] 
	| a /= b = USD 15.2
	| otherwise = USD 16.0

price books = USD (8.0 * fromIntegral(length(books)))

count books book = (length . filter (\x -> x == book)) books

--alldifferent books = all (\x -> count(x,books) == 1) books
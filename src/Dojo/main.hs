module Dojo.Main (makeMoney) where 
data Book = Book1 | Book2 | Book3 | Book4 deriving (Eq)

instance Show Book where
		show Book1 = "The rock"
		show Book2 = "The hobbit"
		show Book3 = "The one with big spiders"
		show a = "Another book" 

data Money a = USD a deriving (Eq)

instance (Show b) => Show (Money b) where
	show (USD a) = "$" ++ show a 

makeMoney :: Fractional a => a -> Money a
makeMoney a = USD a
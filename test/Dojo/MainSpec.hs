module Dojo.MainSpec (spec) where

import Test.Hspec hiding (example)
import Test.QuickCheck
import Control.Exception (evaluate)
import Dojo.Main


spec :: Spec
spec = do
  describe "count" $ do
    it "returns 1 when there is only one occurence of the element in array" $ do
      count ["one", "two", "many"] "one" `shouldBe` 1
    it "returns 2 when there are two occurences of the element in array" $ do
      count ["one", "two", "many", "one"] "one" `shouldBe` 2
  describe "Calculate Bowling score (wat?)" $ do
    it "calculates the price for 1 book" $ do
      price [Book1] `shouldBe` USD 8.0
    it "calculates the price 2 of the same books" $ do
      price [Book1, Book1] `shouldBe` USD 16.0
    it "calculates the price 2 different books" $ do
      price [Book1, Book2] `shouldBe` USD 15.2
    it "calculates the price 2 different books again" $ do
      price [Book2, Book3] `shouldBe` USD 15.2
    it "calculates the price 2 different books" $ do
      price [Book1, Book3] `shouldBe` USD 15.2
    it "calculates the price 3 different books" $ do
      price [Book1, Book2, Book3] `shouldBe` USD 21.6
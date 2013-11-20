module Dojo.MainSpec (spec) where

import Test.Hspec hiding (example)
import Test.QuickCheck
import Control.Exception (evaluate)
import Dojo.Main


spec :: Spec
spec = do
  describe "Calculate Bowling score" $ do
    it "calculates the price for 1 book" $ do
      price [Book1] `shouldBe` USD 8.0
    it "calculates the price 2 of the same books" $ do
      price [Book1, Book1] `shouldBe` USD 16.0
    it "calculates the price 2 different books" $ do
      price [Book1, Book2] `shouldBe` USD 15.2
    it "calculates the price 2 different books" $ do
      price [Book1, Book3] `shouldBe` USD 15.2
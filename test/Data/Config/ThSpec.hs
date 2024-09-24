module Data.Config.ThSpec where

-- import Data.Config.TH
import Test.Hspec

-- defineAllModels

spec ∷ Spec
spec = describe "TH" .
    it "should correct types" $
        -- show (Person {}) `shouldBe` ""
        (1 :: Int) `shouldBe` (1 :: Int)

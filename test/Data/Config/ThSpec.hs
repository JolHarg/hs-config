module Data.Config.ThSpec where

import HSpec
import Data.Config.TH

defineAllModels

spec :: Spec
spec = describe "TH" .
    it "should correct types" $
        show (Person {}) `shouldBe` ""
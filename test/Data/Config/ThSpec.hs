module Data.Config.ThSpec where

import Data.Config.TH
import HSpec

defineAllModels

spec ∷ Spec
spec = describe "TH" .
    it "should correct types" $
        show (Person {}) `shouldBe` ""

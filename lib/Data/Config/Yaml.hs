{-# LANGUAGE TemplateHaskell #-}

module Data.Config.Yaml where

import Data.Aeson
import Data.Config
import Data.Yaml
import Data.Yaml.TH

-- getConfig :: Q ?

getConfig ∷ Config
getConfig = $$(decodeFile "config.yml")

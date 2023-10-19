module Data.Config.YAML where

import Data.Aeson
import Data.Config
import Data.Config.Yaml
import Data.Model.TH
import Data.Yaml
import Language.Haskell.TH
import Language.Haskell.TH.Syntax

defineAllModels ∷ DecsQ
defineAllModels = makeFieldTypes <$> entities getConfig

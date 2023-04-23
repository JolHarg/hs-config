module Data.Config where

import Data.Model

-- This form of Config is for compile-time variables.

data Config = Config {
    appName :: String,
    appIcon :: String,
    description :: String,
    keywords :: [String],
    updateServer :: Maybe String,
    entities :: [(String, Model)]
}
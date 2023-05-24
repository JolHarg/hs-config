module Data.Config where

import           Data.Model

-- This form of Config is for compile-time variables. Stuff we would use differently, not let our users use differently.

-- | Definition of a global configuration.
data Config = Config {
    appName      :: String,
    appIcon      :: String,
    description  :: String,
    keywords     :: [String],
    updateServer :: Maybe String,
    entities     :: [Model]
} deriving (Eq, Show)

{-# LANGUAGE TemplateHaskell #-}

module Config.Env where

import Config.Foreign
import Control.Exception
import Data.Text
import Language.Haskell.TH

apiHostIO :: IO Text
apiHostIO = pack <$> catch (envVar "API_HOST") (\(SomeException ex) -> pure $ "API Host Runtime Unset" <> show ex)

apiHost :: Text
apiHost = pack $ $(stringE =<< runIO (catch (envVar "API_HOST") (\(SomeException ex) -> pure $ "API Host Compile Time Unset" <> show ex)))
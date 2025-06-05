{-# LANGUAGE TemplateHaskell #-}

module Config.Env where

import Config.Foreign
import Control.Exception
import Data.Text qualified as T
import Data.Text (Text)
import Language.Haskell.TH

apiHostIO ∷ IO Text
apiHostIO = T.pack <$> catch (envVar "API_HOST") (\(SomeException ex) -> pure $ "API Host Runtime Unset" <> Prelude.show ex)

apiHost ∷ Text
apiHost = T.pack $ $(stringE =<< runIO (catch (envVar "API_HOST") (\(SomeException ex) -> pure $ "API Host Compile Time Unset" <> Prelude.show ex)))

module DOM.Window
  ( Window
  , querySelector
  ) where

import Prelude ((<<<), (<$>))

import Control.Monad.Eff (Eff())
import Data.Maybe (Maybe)
import Data.Null (Null, toMaybe)
import DOM (DOM)
import DOM.Node (Node)

type Window = { }

foreign import querySelector' :: forall eff. String -> Eff (dom :: DOM | eff) (Null Node)

querySelector :: forall eff. String -> Eff (dom :: DOM | eff) (Maybe Node)
querySelector = (toMaybe <$>) <<< querySelector'

module DOM.Node
  ( Node
  , textContent
  ) where

import Prelude (class Show)

import Control.Monad.Eff (Eff)
import DOM (DOM)

foreign import data Node :: *

foreign import textContent :: forall eff. Node -> Eff (dom :: DOM | eff) String

instance showNode :: Show Node where
  show _ = "foo"

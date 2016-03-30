module Main where

import Prelude (Unit, return, unit, (>>=), (<$>), (<<<))
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data.Maybe (maybe)
import DOM (DOM)
import DOM.Node (textContent)
import DOM.Window (querySelector)

main :: forall e. Eff (console :: CONSOLE, dom :: DOM | e) Unit
main = querySelector "#layout" >>= maybe (return unit) ((>>= log) <<< textContent)

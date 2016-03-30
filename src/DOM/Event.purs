module DOM.Event
  ( EventTarget
  , DOMEvent
  , EventListener
  , addEventListener
  ) where

import Prelude (Unit)

import Control.Monad.Eff (Eff())
--import DOM.Node (Node)

data EventTarget = Node | Window
type State =
  {
  }
type PopStateEvent =
  { state :: State 
  }
type MouseEvent =
  {
  }
data DOMEvent = PopStateEvent | MouseEvent
foreign import data EventListener :: !
foreign import addEventListener :: EventTarget ->
                                   String ->
                                   (DOMEvent -> Unit) ->
                                   Eff (listener :: EventListener) Unit

module Data.Null
  ( Null
  , toMaybe
  ) where

import Data.Maybe (Maybe(..))

foreign import data Null :: * -> *
foreign import toMaybe' :: forall a. (a -> Maybe a) -> (Maybe a) -> (Null a) -> (Maybe a)

toMaybe :: forall a. (Null a) -> (Maybe a)
toMaybe = toMaybe' Just Nothing

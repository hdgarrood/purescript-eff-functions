module Data.Function.Eff where

import Control.Monad.Eff (Eff())

foreign import data EffFn1 :: # ! -> * -> * -> *
foreign import data EffFn2 :: # ! -> * -> * -> * -> *

foreign import mkEffFn1 :: forall eff a r.
  (a -> Eff eff r) -> EffFn1 eff a r
foreign import mkEffFn2 :: forall eff a b r.
  (a -> b -> Eff eff r) -> EffFn2 eff a b r

foreign import runEffFn1 :: forall eff a r.
  EffFn1 eff a r -> a -> Eff eff r
foreign import runEffFn2 :: forall eff a b r.
  EffFn2 eff a b r -> a -> b -> Eff eff r

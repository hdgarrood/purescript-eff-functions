module Data.Function.Eff where

import Control.Monad.Eff (Eff())

foreign import data EffFn1 :: # ! -> * -> * -> *
foreign import data EffFn2 :: # ! -> * -> * -> * -> *
foreign import data EffFn3 :: # ! -> * -> * -> * -> * -> *
foreign import data EffFn4 :: # ! -> * -> * -> * -> * -> * -> *
foreign import data EffFn5 :: # ! -> * -> * -> * -> * -> * -> * -> *
foreign import data EffFn6 :: # ! -> * -> * -> * -> * -> * -> * -> * -> *
foreign import data EffFn7 :: # ! -> * -> * -> * -> * -> * -> * -> * -> * -> *
foreign import data EffFn8 :: # ! -> * -> * -> * -> * -> * -> * -> * -> * -> * -> *
foreign import data EffFn9 :: # ! -> * -> * -> * -> * -> * -> * -> * -> * -> * -> * -> *
foreign import data EffFn10 :: # ! -> * -> * -> * -> * -> * -> * -> * -> * -> * -> * -> * -> *

foreign import mkEffFn1 :: forall eff a r.
  (a -> Eff eff r) -> EffFn1 eff a r
foreign import mkEffFn2 :: forall eff a b r.
  (a -> b -> Eff eff r) -> EffFn2 eff a b r
foreign import mkEffFn3 :: forall eff a b c r.
  (a -> b -> c -> Eff eff r) -> EffFn3 eff a b c r
foreign import mkEffFn4 :: forall eff a b c d r.
  (a -> b -> c -> d -> Eff eff r) -> EffFn4 eff a b c d r
foreign import mkEffFn5 :: forall eff a b c d e r.
  (a -> b -> c -> d -> e -> Eff eff r) -> EffFn5 eff a b c d e r
foreign import mkEffFn6 :: forall eff a b c d e f r.
  (a -> b -> c -> d -> e -> f -> Eff eff r) -> EffFn6 eff a b c d e f r
foreign import mkEffFn7 :: forall eff a b c d e f g r.
  (a -> b -> c -> d -> e -> f -> g -> Eff eff r) -> EffFn7 eff a b c d e f g r
foreign import mkEffFn8 :: forall eff a b c d e f g h r.
  (a -> b -> c -> d -> e -> f -> g -> h -> Eff eff r) -> EffFn8 eff a b c d e f g h r
foreign import mkEffFn9 :: forall eff a b c d e f g h i r.
  (a -> b -> c -> d -> e -> f -> g -> h -> i -> Eff eff r) -> EffFn9 eff a b c d e f g h i r
foreign import mkEffFn10 :: forall eff a b c d e f g h i j r.
  (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> Eff eff r) -> EffFn10 eff a b c d e f g h i j r

foreign import runEffFn1 :: forall eff a r.
  EffFn1 eff a r -> a -> Eff eff r
foreign import runEffFn2 :: forall eff a b r.
  EffFn2 eff a b r -> a -> b -> Eff eff r
foreign import runEffFn3 :: forall eff a b c r.
  EffFn3 eff a b c r -> a -> b -> c -> Eff eff r
foreign import runEffFn4 :: forall eff a b c d r.
  EffFn4 eff a b c d r -> a -> b -> c -> d -> Eff eff r
foreign import runEffFn5 :: forall eff a b c d e r.
  EffFn5 eff a b c d e r -> a -> b -> c -> d -> e -> Eff eff r
foreign import runEffFn6 :: forall eff a b c d e f r.
  EffFn6 eff a b c d e f r -> a -> b -> c -> d -> e -> f -> Eff eff r
foreign import runEffFn7 :: forall eff a b c d e f g r.
  EffFn7 eff a b c d e f g r -> a -> b -> c -> d -> e -> f -> g -> Eff eff r
foreign import runEffFn8 :: forall eff a b c d e f g h r.
  EffFn8 eff a b c d e f g h r -> a -> b -> c -> d -> e -> f -> g -> h -> Eff eff r
foreign import runEffFn9 :: forall eff a b c d e f g h i r.
  EffFn9 eff a b c d e f g h i r -> a -> b -> c -> d -> e -> f -> g -> h -> i -> Eff eff r
foreign import runEffFn10 :: forall eff a b c d e f g h i j r.
  EffFn10 eff a b c d e f g h i j r -> a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> Eff eff r

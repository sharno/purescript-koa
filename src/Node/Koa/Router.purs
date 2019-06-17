module Node.Koa.Router where

import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Effect.Uncurried (EffectFn3, runEffectFn3)
import Node.Koa.Types (Router, Context)

foreign import mkRouter :: Effect Router

foreign import _routes :: Fn2 Router Context Context
routes :: Router -> Context -> Context
routes = runFn2 _routes

foreign import _allowedMethods :: Fn2 Router Context Context
allowedMethods :: Router -> Context -> Context
allowedMethods = runFn2 _allowedMethods

foreign import _get :: EffectFn3 Router String (Context -> Context) Router
get :: Router -> String -> (Context -> Context) -> Effect Router
get = runEffectFn3 _get

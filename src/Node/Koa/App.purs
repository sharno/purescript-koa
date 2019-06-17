module Node.Koa.App where

import Effect (Effect)
import Effect.Uncurried (EffectFn2, runEffectFn2)
import Node.Koa.Types (Application, Context)

foreign import mkApplication :: Effect Application

foreign import useImpl :: EffectFn2 Application (Context -> Context) Application
use :: Application -> (Context -> Context) -> Effect Application
use = runEffectFn2 useImpl

foreign import listenImpl :: EffectFn2 Application Int Application
listen :: Application -> Int -> Effect Application
listen = runEffectFn2 listenImpl

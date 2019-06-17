module Node.Koa.App where

import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Node.Koa.Types (Application, Context)

foreign import mkApplication :: Effect Application

foreign import useImpl :: Fn2 Application (Context -> Effect Context) (Effect Application)
use :: Application -> (Context -> Effect Context) -> Effect Application
use = runFn2 useImpl

foreign import listenImpl :: Fn2 Application Int (Effect Application)
listen :: Application -> Int -> Effect Application
listen = runFn2 listenImpl

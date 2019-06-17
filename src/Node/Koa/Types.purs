module Node.Koa.Types where

foreign import data Application :: Type

-- TODO: import node-http wrapper instead?
-- | The type of a HTTP server object
foreign import data Server :: Type

type Context =
    { body :: String
    }

module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Node.Koa.App (listen, mkApplication, use)
-- import Node.Koa.Router (allowedMethods, get, mkRouter, routes)

main :: Effect Unit
main = do
  app <- mkApplication
  -- router <- mkRouter

  -- _ <- get router "/" (\ctx -> {body: "Hello there"})

  -- _ <- use app (routes router)
  -- _ <- use app (allowedMethods router)

  _ <- use app (\ctx -> {body: "Hello There"})

  _ <- listen app 1313
  _ <- log "Started listening on port 1313"

  pure unit

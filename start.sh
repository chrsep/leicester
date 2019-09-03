#! /bin/bash
mix local.hex --force
mix deps.get
mix ecto.setup
mix phx.server
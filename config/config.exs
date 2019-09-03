# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :leicester,
  ecto_repos: [Leicester.Repo]

# Configures the endpoint
config :leicester, LeicesterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/pHGd4Y5sAH7+7WBLP+4hTLFBC0BaqiDt0e0g6of9FpQoOBFEupNONN1FPbDMJdz",
  render_errors: [view: LeicesterWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Leicester.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

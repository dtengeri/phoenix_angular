# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_angular,
  ecto_repos: [PhoenixAngular.Repo]

# Configures the endpoint
config :phoenix_angular, PhoenixAngularWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5yTIIaH+zsMZfnnjkuQa2fCGlfQmuFpJokHkoGSdo7jMT74BLTT7uiyq7Qj+4ywg",
  render_errors: [view: PhoenixAngularWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixAngular.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

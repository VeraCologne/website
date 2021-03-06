# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :montreal_elixir_web,
  namespace: MontrealElixirWeb,
  ecto_repos: [MontrealElixir.Repo]

# Configures the endpoint
config :montreal_elixir_web, MontrealElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CLjhBsp77HnQqpmfCSJrl22oWm1z6gg7LYabDTlENifC9zeO0XaIdBeVwxcoMKSe",
  render_errors: [view: MontrealElixirWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MontrealElixirWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :montreal_elixir_web, :generators, context_app: :montreal_elixir

# Import environment specific config.
import_config "#{Mix.env()}.exs"

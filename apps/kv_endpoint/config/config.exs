# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kv_endpoint,
  namespace: KvEndpoint,
  ecto_repos: [KvEndpoint.Repo]

# Configures the endpoint
config :kv_endpoint, KvEndpointWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uNt9XNLIQpR2Uj7gb/mAYzzx0WkoHly2q5Fpws5s9CnYjKaKuMdZ3dS9oNt46ysl",
  render_errors: [view: KvEndpointWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: KvEndpoint.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

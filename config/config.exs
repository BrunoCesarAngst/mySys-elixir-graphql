# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mysys,
  ecto_repos: [Mysys.Repo]

config :mysys, Mysys.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :mysys, MysysWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EcgwJH9ZMuwRpGo9l9fHJPcimxoDwjVDvZmI/Eb+EcyumJOA+n8hHhp41+2rPFmJ",
  render_errors: [view: MysysWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Mysys.PubSub,
  live_view: [signing_salt: "hw0tFnX9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

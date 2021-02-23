# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pluss_pay,
  ecto_repos: [PlussPay.Repo]

# Configures the endpoint
config :pluss_pay, PlussPayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oN4XsxJUHTrDaXYmNsTUzhO/pZjM47CC4uIXH0nriDdz7e38cLKc8OXcdHh9zyQ1",
  render_errors: [view: PlussPayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PlussPay.PubSub,
  live_view: [signing_salt: "BnUY4OtP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

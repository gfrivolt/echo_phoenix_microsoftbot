use Mix.Config

# For production, we configure the host to read the PORT
# from the system environment. Therefore, you will need
# to set PORT=80 before running your server.
#
# You should also configure the url host to something
# meaningful, we use this information when generating URLs.
#
# Finally, we also include the path to a manifest
# containing the digested version of static files. This
# manifest is generated by the mix phoenix.digest task
# which you typically run after static files are built.
config :echo_bot, EchoBot.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "heroku-bot.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")


# Do not print debug messages in production
config :logger, level: :info

config :microsoftbot,
  app_id: System.get_env("APP_ID"),
  app_secret: System.get_env("APP_SECRET")

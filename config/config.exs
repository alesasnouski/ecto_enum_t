import Config

config :ecto_enum_t, ecto_repos: [EET.Repo]

config :ecto_enum_t, EET.Repo,
  priv: "priv/repo",
  username: "user",
  password: "pass",
  database: "db_0",
  hostname: "127.0.0.1",
  port: 3306,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

defmodule Mysys.Repo do
  use Ecto.Repo,
    otp_app: :mysys,
    adapter: Ecto.Adapters.Postgres
end

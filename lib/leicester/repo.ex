defmodule Leicester.Repo do
  use Ecto.Repo,
    otp_app: :leicester,
    adapter: Ecto.Adapters.Postgres
end

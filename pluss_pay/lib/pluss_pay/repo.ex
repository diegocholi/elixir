defmodule PlussPay.Repo do
  use Ecto.Repo,
    otp_app: :pluss_pay,
    adapter: Ecto.Adapters.Postgres
end

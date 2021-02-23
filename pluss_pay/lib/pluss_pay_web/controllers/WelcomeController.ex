defmodule PlussPayWeb.WelcomeController do
  use PlussPayWeb, :controller

  def index(conn, _params) do
    text(conn, "Ola Mundo!")
  end
end

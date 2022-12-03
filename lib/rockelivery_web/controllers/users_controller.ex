defmodule RockeliveryWeb.UsersController do
  use RockeliveryWeb, :controller

  alias Rockelivery.User

  def create(conn, params) do
    with {:ok, %User{} = user} <- Rockelivery.create_user(params) do
      conn
      |> put_status(:created)
      |> render("created.json", user: user)
    end
  end
end

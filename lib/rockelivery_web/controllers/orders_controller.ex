defmodule RockeliveryWeb.OrdersController do
  use RockeliveryWeb, :controller

  alias Rockelivery.Order
  alias RockeliveryWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    #        IO.inspect(items, label: "Items...........................")
    IO.inspect(params, label: "Params=========================")

    with {:ok, %Order{} = order} <- Rockelivery.create_order(params) do
      conn
      |> put_status(:created)
      |> render("created.json", order: order)
    end
  end
end

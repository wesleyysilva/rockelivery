defmodule RockeliveryWeb.OrdersView do
  use RockeliveryWeb, :view

  alias Rockelivery.Order

  def render("created.json", %{order: %Order{} = order}) do
    %{
      message: "Order created!",
      order: order
    }
  end
end

defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)
    token = "xpto1234"

    response = render(UsersView, "created.json", token: token, user: user)

    assert %{
             message: "User created!",
             token: "xpto1234",
             user: %Rockelivery.User{
               id: "961d1881-e5cf-4a7b-8381-f91deca8b63a",
               age: 27,
               address: "Manoel",
               cep: "36031365",
               cpf: "98765432100",
               email: "wesley@gmail.com",
               password: "123456",
               password_hash: nil,
               name: "Wesley",
               inserted_at: nil,
               updated_at: nil
             }
           } == response
  end
end

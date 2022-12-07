defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      "address" => "Manoel",
      "cep" => "36031365",
      "cpf" => "98765432100",
      "email" => "wesley@gmail.com",
      "password" => "123456",
      "name" => "Wesley",
      "age" => 27
    }
  end

  def user_factory do
    %User{
      address: "Manoel",
      cep: "36031365",
      cpf: "98765432100",
      email: "wesley@gmail.com",
      password: "123456",
      name: "Wesley",
      age: 27,
      id: "961d1881-e5cf-4a7b-8381-f91deca8b63a"
    }
  end
end

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

  def cep_info_factory do
    %{
      "bairro" => "Sé",
      "cep" => "01001-000",
      "complemento" => "lado ímpar",
      "ddd" => "11",
      "gia" => "1004",
      "ibge" => "3550308",
      "localidade" => "São Paulo",
      "logradouro" => "Praça da Sé",
      "siafi" => "7107",
      "uf" => "SP"
    }
  end
end

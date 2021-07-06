defmodule Mysys.User.Create do
  alias Mysys.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end

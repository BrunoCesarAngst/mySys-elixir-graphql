defmodule Mysys.User.Get do
  # import Ecto.Query

  alias Ecto.UUID
  alias Mysys.{Repo, User}

  def call(id) do
    id
    |> UUID.cast()
    |> handle_response()
  end

  defp handle_response(:error) do
    {:error, "Invalid UUID"}
  end

  defp handle_response({:ok, uuid}) do
    case Repo.get(User, uuid) do
      nil -> {:error, "User not fond"}
      user -> {:ok, user}
    end
  end
end

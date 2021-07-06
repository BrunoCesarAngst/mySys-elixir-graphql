defmodule MysysWeb.Resolvers.User do
  alias Mysys.User

  def create(%{input: params}, _context), do: User.Create.call(params)
  def get(%{id: user_id}, _context), do: User.Get.call(user_id)
end

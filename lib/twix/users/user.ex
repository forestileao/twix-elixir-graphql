defmodule Twix.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Twix.Posts.Post

  @required_params [:nickname, :email, :birthdate]

  schema "users" do
    field :nickname, :string
    field :email, :string
    field :age, :integer
    has_many :posts, Post

    timestamps()
  end

  def changeset(user \\ %__MODULE__{}, params), do: cast_and_validate(user, params)

  defp cast_and_validate(struct, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:nickname, min: 1)
    |> validate_number(:age, greater_than_or_equal_to: 18)
    |> unique_constraint(:nickname)
    |> unique_constraint(:email)
  end
end

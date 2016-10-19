defmodule BlogPhoenix.Post do
  use BlogPhoenix.Web, :model

  schema "posts" do
    field :title, :string
    field :body, :string

    has_many :comments, BlogPhoenix.Comment

    timestamps()
  end
end

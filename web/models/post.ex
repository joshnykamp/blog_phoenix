defmodule BlogPhoenix.Post do
  use BlogPhoenix.Web, :model
  import Ecto.Query

  schema "posts" do
    field :title, :string
    field :body, :string

    has_many :comments, BlogPhoenix.Comment

    timestamps()
  end

  def count_comments(query) do
    from p in query,
    group_by: p.id,
    left_join: c in assoc(p, :comments),
    select: {p, count(c.id)}
  end

end

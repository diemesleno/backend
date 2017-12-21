defmodule Re.Image do
  @moduledoc """
  Module for listing images.
  """
  use Ecto.Schema

  import Ecto.Changeset

  schema "images" do
    field :filename, :string
    field :position, :integer
    field :is_cloudinary, :boolean
    belongs_to :listing, Re.Listing

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:filename, :position, :is_cloudinary, :listing_id])
    |> validate_required([:filename, :position])
  end
end
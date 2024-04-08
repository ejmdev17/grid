defmodule ClinicalTakehome.Grid.Cell do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cells" do
    field :row, :integer
    field :col, :integer
    field :toggled, :boolean, default: false

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(cell, attrs) do
    cell
    |> cast(attrs, [:row, :col, :toggled])
    |> validate_required([:row, :col, :toggled])
  end
end

defmodule ClinicalTakehomeWeb.GridResolver do
  alias ClinicalTakehome.Grid

  def cells(_root, _args, _info) do
    {:ok, Grid.list_cells()}
  end

  def toggle_cell(_root, %{id: id}, _info) do
    id
    |> String.to_integer()
    |> Grid.toggle_cell()
  end
end

defmodule ClinicalTakehomeWeb.Schema do
  use Absinthe.Schema

  alias ClinicalTakehomeWeb.GridResolver

  object :cell do
    field :id, non_null(:id)
    field :row, non_null(:integer)
    field :col, non_null(:integer)
    field :toggled, non_null(:boolean)
  end

  query do
    @desc "Get all cells"
    field :all_cells, non_null(list_of(non_null(:cell))) do
      resolve(&GridResolver.cells/3)
    end
  end

  mutation do
    @desc "Toggle a cell"
    field :toggle_cell, :cell do
      arg(:id, non_null(:id))

      resolve(&GridResolver.toggle_cell/3)
    end
  end
end

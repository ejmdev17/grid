defmodule ClinicalTakehome.Repo.Migrations.CreateCells do
  use Ecto.Migration

  def change do
    create table(:cells) do
      add :row, :integer
      add :col, :integer
      add :toggled, :boolean, default: false, null: false

      timestamps(type: :utc_datetime)
    end
  end
end

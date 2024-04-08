# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ClinicalTakehome.Repo.insert!(%ClinicalTakehome.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ClinicalTakehome.Repo
alias ClinicalTakehome.Grid.Cell

%Cell{row: 0, col: 0, toggled: false} |> Repo.insert!()
%Cell{row: 0, col: 1, toggled: false} |> Repo.insert!()
%Cell{row: 0, col: 2, toggled: false} |> Repo.insert!()
%Cell{row: 1, col: 0, toggled: false} |> Repo.insert!()
%Cell{row: 1, col: 1, toggled: false} |> Repo.insert!()
%Cell{row: 1, col: 2, toggled: false} |> Repo.insert!()
%Cell{row: 2, col: 0, toggled: false} |> Repo.insert!()
%Cell{row: 2, col: 1, toggled: false} |> Repo.insert!()
%Cell{row: 2, col: 2, toggled: false} |> Repo.insert!()

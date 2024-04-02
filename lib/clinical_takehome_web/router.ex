defmodule ClinicalTakehomeWeb.Router do
  use ClinicalTakehomeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ClinicalTakehomeWeb do
    pipe_through :api
  end
end

defmodule ClinicalTakehomeWeb.Router do
  use ClinicalTakehomeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug CORSPlug, origin: "*"
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug, schema: ClinicalTakehomeWeb.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: ClinicalTakehomeWeb.Schema,
      interface: :simple,
      context: %{pubsub: ClinicalTakehomeWeb.Endpoint}
  end
end

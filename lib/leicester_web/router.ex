defmodule LeicesterWeb.Router do
  use LeicesterWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LeicesterWeb do
    pipe_through :api
  end
end

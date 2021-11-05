defmodule TedxWeb.PortfolioController do
  use TedxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", projects: PortfolioProjects.all())
  end

  def show(conn, %{"id" => id} = params) do
    id = String.to_atom(id)
    project = PortfolioProjects.all()[id]
    render(conn, "show.html", project: project)
  end
end

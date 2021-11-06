defmodule TedxWeb.PortfolioController do
  use TedxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html",
      projects: PortfolioProjects.all(),
      page_title: "tedlopez | portfolio"
    )
  end

  def show(conn, %{"id" => id}) do
    id = String.to_atom(id)
    project = PortfolioProjects.all()[id]
    render(conn, "show.html", project: project, page_title: "tedlopez | #{project.name}")
  end
end

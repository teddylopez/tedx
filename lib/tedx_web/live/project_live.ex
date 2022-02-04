defmodule TedxWeb.ProjectLive do
  use TedxWeb, :live_view

  alias Tedx.PortfolioProjects
  alias TedxWeb.PortfolioView

  def mount(%{"id" => id}, _session, socket) do
    id = String.to_atom(id)
    project = PortfolioProjects.all()[id]

    {:ok,
     assign(socket, project: project, socket: socket, page_title: "tedlopez | #{project.name}")}
  end

  def render(assigns) do
    PortfolioView.render("show.html", assigns)
  end
end

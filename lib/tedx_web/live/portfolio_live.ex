defmodule TedxWeb.PortfolioLive do
  use TedxWeb, :live_view

  def mount(params, _session, socket) do
    {:ok,
     assign(socket,
       projects: PortfolioProjects.all(),
       project: nil,
       view: socket.view
     )}
  end

  def handle_params(%{"id" => project_name}, _url, socket) do
    project = String.to_atom(project_name)
    portfolio = socket.assigns.projects
    socket = assign(socket, project: portfolio[project])

    {:noreply, socket}
  end

  def handle_params(_params, url, socket) do
    {:noreply, socket = assign(socket, project: nil, view: socket.view)}
  end
end

defmodule TedxWeb.PortfolioLive do
  use TedxWeb, :live_view

  alias Tedx.PortfolioProjects
  alias TedxWeb.PortfolioView

  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       projects: PortfolioProjects.all(),
       socket: socket,
       page_title: "tedlopez | portfolio"
     )}
  end

  def render(assigns) do
    PortfolioView.render("index.html", assigns)
  end
end

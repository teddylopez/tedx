defmodule TedxWeb.PageController do
  use TedxWeb, :controller

  alias TedxWeb.Experience

  def home(conn, _params) do
    render(conn, "home.html",
      jobs: Experience.jobs(),
      education: Experience.education(),
      training: Experience.training()
    )
  end
end

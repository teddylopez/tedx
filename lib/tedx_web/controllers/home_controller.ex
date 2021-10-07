defmodule TedxWeb.HomeController do
  use TedxWeb, :controller

  alias TedxWeb.JobHistory

  def index(conn, _params) do
    render(conn, "index.html",
      jobs: JobHistory.jobs(),
      education: JobHistory.education(),
      training: JobHistory.training()
    )
  end
end

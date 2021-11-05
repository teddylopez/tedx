defmodule TedxWeb.PageController do
  use TedxWeb, :controller

  alias TedxWeb.JobHistory

  def home(conn, _params) do
    render(conn, "home.html",
      jobs: JobHistory.jobs(),
      education: JobHistory.education(),
      training: JobHistory.training()
    )
  end
end

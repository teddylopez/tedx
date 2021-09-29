defmodule TedxWeb.HomeLive do
  use TedxWeb, :live_view
  alias TedxWeb.JobHistory

  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       jobs: JobHistory.jobs(),
       education: JobHistory.education(),
       training: JobHistory.training()
     )}
  end
end

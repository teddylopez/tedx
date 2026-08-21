defmodule Tedx.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TedxWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:tedx, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Tedx.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Tedx.Finch},
      # Start a worker by calling: Tedx.Worker.start_link(arg)
      # {Tedx.Worker, arg},
      # Start to serve requests, typically the last entry
      TedxWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Tedx.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TedxWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

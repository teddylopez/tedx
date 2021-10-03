defmodule TedxWeb.VideoComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use TedxWeb, :live_component

  def render(assigns) do
    ~H"""
    <div id="hero-container">
      <div id="video-container"></div>
      <video autoplay="" loop="" muted src={TedxWeb.HomeView.random_video()} type="video/mp4"></video>
      <div id="banner">
        <p>software engineer &amp; web developer</p>
      </div>
    </div>
    """
  end
end

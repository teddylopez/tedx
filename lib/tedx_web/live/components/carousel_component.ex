defmodule TedxWeb.CarouselComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use TedxWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="inner-content">
      <a class="" href="/portfolio">View My Work</a>
    </div>
    """
  end
end

defmodule TedxWeb.CarouselComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use TedxWeb, :live_component

  def render(assigns) do
    ~H"""
    <div>
      <div class="overlay-link" @click="home = false">
        <%= live_patch "View My Work", to: Routes.live_path(@socket, TedxWeb.PortfolioLive) %>
      </div>
      <div id="slider">
        <figure>
          <img src={Routes.static_path(@socket, "/images/carousel/carousel_one.png" )} />
          <img src={Routes.static_path(@socket, "/images/carousel/carousel_two.png" )} />
          <img src={Routes.static_path(@socket, "/images/carousel/carousel_three.png" )} />
          <img src={Routes.static_path(@socket, "/images/carousel/carousel_four.png" )} />
          <img src={Routes.static_path(@socket, "/images/carousel/carousel_one.png" )} />
        </figure>
      </div>
    </div>
    """
  end
end

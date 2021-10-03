defmodule TedxWeb.AboutMeComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use TedxWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="container">
      <div class="inner-content">
        <div class="text-box">
          <p class="caption">About me</p>
          <h1 class="header">TED LÓPEZ</h1>
          <p class="details">
            Software engineer and web developer supporting baseball research &amp; development, healthcare, defense, technology, and venture capital industries.
          </p>
        </div>
        <div class="image-box">
          <div class="image-wrapper">
            <img src={Routes.static_path(@socket, "/images/trophy.jpg" )} alt="picture of me" />
          </div>
        </div>
      </div>
    </div>
    """
  end
end

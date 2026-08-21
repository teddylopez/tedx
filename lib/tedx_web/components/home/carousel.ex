defmodule TedxWeb.Home.Carousel do
  use TedxWeb, :html

  def carousel(assigns) do
    ~H"""
    <div id="carousel">
      <div>
        <div class="overlay-link">
          View My Work
        </div>
        <div id="slider">
          <figure>
            <img src="/images/carousel/carousel_four.png" />
            <img src="/images/carousel/carousel_four.png" />
            <img src="/images/carousel/carousel_four.png" />
            <img src="/images/carousel/carousel_four.png" />
            <img src="/images/carousel/carousel_four.png" />
          </figure>
        </div>
      </div>
    </div>
    """
  end
end

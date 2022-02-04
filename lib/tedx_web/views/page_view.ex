defmodule TedxWeb.PageView do
  use TedxWeb, :view

  alias Tedx.{Experience, VideoLinks}
  alias TedxWeb.{PageView, PortfolioLive}

  def random_video do
    videos = VideoLinks.all()
    random = Enum.random(0..Enum.count(videos))
    Enum.at(videos, random)
  end
end

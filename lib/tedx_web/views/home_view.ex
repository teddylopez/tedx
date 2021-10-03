defmodule TedxWeb.HomeView do
  use TedxWeb, :view

  def random_video do
    videos = VideoLinks.all()
    random = Enum.random(0..Enum.count(videos))
    Enum.at(videos, random)
  end
end

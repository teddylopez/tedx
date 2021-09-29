defmodule TedxWeb.PageView do
  use TedxWeb, :view

  def random_video do
    videos = VideoLinks.videos()
    random = Enum.random(0..Enum.count(videos))
    Enum.at(videos, random)
  end
end

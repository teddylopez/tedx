defmodule TedxWeb.Home.Hero do
  use TedxWeb, :html

  alias Tedx.VideoLinks

  def hero(assigns) do
    ~H"""
    <div id="hero-container" class="relative flex items-center justify-center bg-black h-[800px]">
      <div id="video-container" class="absolute inset-0 w-full h-full overflow-hidden"></div>
      <video
        autoplay
        loop
        muted
        src={random_video()}
        type="video/mp4"
        class="absolute top-[80px] w-[90%] max-h-[800px] hidden md:block"
      >
      </video>
      <div id="banner" class="absolute flex flex-col items-center z-10 max-w-[1200px] p-2 text-white">
        <p class="font-permanent-marker text-2xl md:text-[55px] leading-tight text-center max-w-[600px] text-shadow-black">
          Full Stack Developer
        </p>
        <small class="uppercase text-sm text-center max-w-[600px] mt-2 md:mt-8 md:text-sm md:leading-tight">
          ☀️ St. Petersburg, Florida 🐊
        </small>
      </div>
    </div>
    """
  end

  def random_video do
    videos = VideoLinks.all()
    random = Enum.random(0..Enum.count(videos))
    Enum.at(videos, random)
  end
end

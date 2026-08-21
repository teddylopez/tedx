defmodule TedxWeb.HomeLive do
  use TedxWeb, :live_view

  # Re-add Experience and Contact here when their sections are re-enabled in render/1
  import TedxWeb.Home.{Hero, AboutMe, Skills, Carousel, Interests}

  alias Tedx.{Experience}

  @impl true
  def mount(_params, _session, socket) do
    # changeset = HateMail.change_hate_mail_form(%HateMail{})

    {:ok,
     assign(socket,
       jobs: Experience.jobs(),
       education: Experience.education(),
       training: Experience.training(),
       page_title: "tedlopez"
     )}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div class="bg-[rgb(1,6,6)]" phx-hook="HomeNavBar" id="home-content">
      <.hero />
      <.about_me />
      <.skills />
      <%!-- <.experience jobs={@jobs} education={@education} training={@training} /> --%>
      <.carousel />
      <.interests />
    </div>
    """
  end
end

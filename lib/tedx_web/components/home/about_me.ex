defmodule TedxWeb.Home.AboutMe do
  use TedxWeb, :html

  def about_me(assigns) do
    ~H"""
    <.content_container dark="true">
      <.content_section id="about-me">
        <:left_slot>
          <div class="flex flex-col justify-center h-full">
            <p class="caption">About me</p>
            <h1 class="header text-left !text-white">TED LÓPEZ</h1>
            <p class="details">
              Software engineer and web developer supporting baseball research &amp; development, healthcare, defense, technology, and venture capital industries.
            </p>
          </div>
        </:left_slot>
        <:right_slot>
          <div class="flex flex-col justify-center items-center">
            <img class="max-w-96" src="/images/trophy.jpg" alt="picture of me" />
          </div>
        </:right_slot>
      </.content_section>
    </.content_container>
    """
  end
end

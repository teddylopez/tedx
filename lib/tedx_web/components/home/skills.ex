defmodule TedxWeb.Home.Skills do
  use TedxWeb, :html

  def skills(assigns) do
    ~H"""
    <.content_container dark="false">
      <.content_section id="skills">
        <:left_slot>
          <p class="caption">Skills</p>
          <h1 class="header">TECHNICAL SKILLS</h1>
          <p class="details mt-8">
            Elixir, Phoenix, LiveView, Ecto, Ruby on Rails, JavaScript, Angular/React/Vue frameworks/libraries, Node.js, Alpine.js, Swift, Python, data visualization, object-oriented programming, functional programming, SQL, Postgresql and relational databases, responsive design
          </p>
        </:left_slot>
        <:right_slot>
          <img class="max-w-72" src="/images/mission_impossible.svg" alt="mission impossible" />
        </:right_slot>
      </.content_section>
    </.content_container>
    """
  end
end

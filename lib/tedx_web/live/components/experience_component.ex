defmodule TedxWeb.ExperienceComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use TedxWeb, :live_component

  def render(assigns) do
    ~H"""
    <div>
      <h1 class="header">Experience</h1>
      <%= for job <- @jobs do %>
        <div class="job-details">
          <h2><%= job.title %></h2>
          <h3><%= job.company %></h3>
          <h3><%= job.timeline %></h3>
          <div class="job-description">
            <%= job.details %>
          </div>
        </div>
      <% end %>

      <h1 class="header">Education</h1>
      <%= for school <- @education do %>
        <div class="job-details">
          <h2><%= school.school %></h2>
          <h3><%= school.about %></h3>
          <h3><%= school.timeline %></h3>
          <div class="job-description">
            <%= school.details %>
          </div>
        </div>
      <% end %>

      <h1 class="header">Training</h1>
      <div class="training-list">
        <%= for course <- @training do %>
          <div>
            <a href={course.link} target="_blank"><%= course.title %></a>
          </div>
        <% end %>
      </div>
    </div>
    """
  end
end

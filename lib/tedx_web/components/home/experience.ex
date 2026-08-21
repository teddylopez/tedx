defmodule TedxWeb.Home.Experience do
  use TedxWeb, :html

  alias Tedx.Experience

  def experience(assigns) do
    ~H"""
    <.content_container class="mx-36">
      <div class="mt-10">
        <h1 class="header text-center">Experience</h1>
        <div class="mt-2">
          <%= for job <- @jobs do %>
            <div class="job-details mb-6">
              <h2><%= job.title %></h2>
              <h3><%= job.company %></h3>
              <h3><%= job.timeline %></h3>
              <div class="job-description mt-2">
                <%= job.details %>
              </div>
            </div>
          <% end %>
        </div>
      </div>

      <div class="mt-18">
        <h1 class="header text-center">Education</h1>
        <div class="mt-2">
          <%= for school <- @education do %>
            <div class="job-details mb-6">
              <h2><%= school.school %></h2>
              <h3><%= school.about %></h3>
              <h3><%= school.timeline %></h3>
              <div class="job-description mt-2">
                <%= school.details %>
              </div>
            </div>
          <% end %>
        </div>
      </div>

      <div class="mt-18">
        <h1 class="header text-center">Training</h1>
        <div class="mt-2">
          <div class="training-list mb-6">
            <%= for {category, list_of_courses} <- @training do %>
              <div class="category-group">
                <h2>
                  <%= Experience.label_category(category) %>
                </h2>
                <%= for course <- list_of_courses do %>
                  <div class="course-link">
                    <a href={course.link} target="_blank"><%= course.title %></a>
                  </div>
                <% end %>
              </div>
            <% end %>
          </div>
        </div>
      </div>
    </.content_container>
    """
  end
end

defmodule TedxWeb.ContactComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use TedxWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="form-container">
      <h1 class="header">Contact Me</h1>
      <.form let={f} for={@changeset} phx-change="validate" phx-submit="email">
        <%= text_input f, :name, class: "text", placeholder: "name" %>
        <%= error_tag f, :name %>

        <%= email_input f, :email, class: "text", placeholder: "email" %>
        <%= error_tag f, :email %>

        <%= textarea f, :message, class: "textarea", placeholder: "message..." %>
        <%= error_tag f, :message %>

        <div class="button-container">
          <%= submit "Send Complaint", class: "submit", disabled: !@changeset.valid?  %>
        </div>
      </.form>
    </div>
    """
  end
end

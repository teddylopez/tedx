defmodule TedxWeb.Home.Contact do
  use TedxWeb, :html

  def contact(assigns) do
    ~H"""
    <.content_container dark="false" id="contact">
      <h1 class="header">Contact Me</h1>
      <.simple_form for={@changeset} phx-change="validate" phx-submit="email"></.simple_form>
    </.content_container>
    """
  end
end

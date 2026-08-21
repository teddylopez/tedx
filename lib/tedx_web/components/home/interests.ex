defmodule TedxWeb.Home.Interests do
  use TedxWeb, :html

  def interests(assigns) do
    ~H"""
    <.content_container dark="false">
      <.content_section id="interests">
        <:left_slot>
          <div class="flex flex-col justify-center">
            <p class="caption">Interests</p>
            <h1 class="header">INTERESTS</h1>
            <p class="details">
              Florida transplant that enjoys sports and live music. Musician, surfer, member of the Washingtonian Pizza Society.
            </p>
          </div>
        </:left_slot>
        <:right_slot>
          <div class="flex flex-col justify-center items-center">
            <img class="max-w-96" src="/images/surfer.svg" alt="surfer" />
          </div>
        </:right_slot>
      </.content_section>
    </.content_container>
    """
  end
end

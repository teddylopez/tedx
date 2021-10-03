defmodule TedxWeb.InterestsComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use TedxWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="container">
      <div class="inner-content">
        <div class="text-box">
          <div class="sc-crrsfI iDhzRL">
            <p class="caption">What Else</p>
            <h1 class="header">INTERESTS</h1>
            <p class="details">
              Local DC native that enjoys sports and live music. Grew up in Bethesda, Maryland and attended Gonzaga College High School in Washington, DC. Musician, surfer, member of the Washingtonian Pizza Society.
            </p>
          </div>
        </div>
        <div class="image-box">
          <div class="image-wrapper">
            <img src={Routes.static_path(@socket, "/images/surfer.svg" )} alt="mission impossible" />
          </div>
        </div>
      </div>
    </div>
    """
  end
end

defmodule TedxWeb.SkillsComponent do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_component
  use TedxWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="container">
      <div class="inner-content">
        <div class="text-box">
          <div class="sc-crrsfI iDhzRL">
            <p class="caption">Skills</p>
            <h1 class="header">TECHNICAL SKILLS</h1>
            <p class="details">
              HTML, CSS, responsive design, JavaScript, Angular/React/Vue frameworks/libraries, Node.js, Alpine.js, Ruby on Rails, Elixir, Phoenix, Swift, Python, data visualization, Git, frontend and backend experience, Adobe Photoshop, Illustrator, Eloqua, Salesforce, Sitecore, Google Analytics, Webtrends, Windows, Mac OS, Linux, Firebase, MySQL, Postgresql
            </p>
          </div>
        </div>
        <div class="image-box">
          <div class="image-wrapper">
            <img src={Routes.static_path(@socket, "/images/mission_impossible.svg" )} alt="mission impossible" />
          </div>
        </div>
      </div>
    </div>
    """
  end
end

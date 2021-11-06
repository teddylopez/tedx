defmodule PortfolioProjects do
  def all do
    %{
      pitcher_trends: %{
        id: 1,
        name: "pitcher_trends",
        title: "Pitcher Trends",
        subtitle: "I think his arm's about to fall off!",
        desc:
          "A simple Ruby on Rails data visualization application that displays baseball pitcher trends over the course of a season. It can help highlight potential performance irregularities or health risks. Built using Ruby on Rails, Postgresql, and JavaScript library ChartJS.",
        tech: ["Ruby on Rails", "Postgresql", "ChartJS"],
        url: "https://pitcher-trends.herokuapp.com/",
        git: "https://github.com/teddylopez/pitcher_trends"
      },
      amazon: %{
        id: 2,
        name: "amazon",
        title: "Amazon",
        subtitle: "A less evil Amazon made with React",
        desc:
          "This is a basic functionality ecommerce website built using React for the frontend, Firebase for the backend database, and stripe for payment processing. I built it primarily to learn and practice basic frontend development and styling with React",
        tech: ["React", "Firebase", "Stripe"],
        url: "https://fir-6bf26.web.app/",
        git: "https://github.com/teddylopez/amazon-clone"
      },
      tedsurf: %{
        id: 3,
        name: "tedsurf",
        title: "TedSurf",
        subtitle: "A Vue.js surf report application",
        desc:
          "It's firing! This simple desktop and mobile friendly Vue.js application gives you the surf forecast for three of my favorite surfing destinations. It retrieves data from a mainstream surf forecast provider's API that doesn't seem to be very secure.",
        tech: ["Vue.js", "JavaScript", "Responsive Design"],
        url: "https://surf-vue.herokuapp.com/",
        git: "https://github.com/teddylopez/vue-surf"
      },
      monthlyvue: %{
        id: 4,
        name: "monthlyvue",
        title: " monthlyVue",
        subtitle: "Let's reschedule... a calendar application using Vue.js",
        desc:
          "What's the action? Check your schedge with this calendar app built with Vue.js. It makes use of Vuetify for frontend styling and Google Firebase for it's backend database.",
        tech: ["Vue.js", "Vuetify", "Firebase"],
        url: "https://monthly-vue.herokuapp.com/",
        git: "https://github.com/teddylopez/monthly-vue"
      },
      depth_chart: %{
        id: 5,
        name: "depth_chart",
        title: "Depth Chart",
        subtitle: "Who's on third?",
        desc:
          "Drag and drop players and rearrange them however you want to build your team! Depth charts are updated and saved to the backend via an AJAX request that is triggered when the chart gets updated.",
        tech: ["Ruby on Rails", "JavaScript"],
        url: "https://depth-chart.herokuapp.com/",
        git: "https://github.com/teddylopez/depth-chart"
      },
      tedtype: %{
        id: 6,
        name: "tedtype",
        title: "TedType",
        subtitle: "A quick-search that finds cities using an external API",
        desc: "Keep mashing those keys until you find what you're looking for.",
        tech: ["JavaScript"],
        url: "https://type-ahead.firebaseapp.com/",
        git: "https://github.com/teddylopez/type-ahead"
      },
      teddygrams: %{
        id: 7,
        name: "teddygrams",
        title: "teddygrams",
        subtitle: "Photo sharing for Ted",
        desc:
          "teddygrams is a image sharing application that was built using React. I also incorporated Redux into the project to manage component state.",
        tech: ["React", "Redux"],
        url: false,
        git: "https://github.com/teddylopez/teddygrams"
      },
      tedness: %{
        id: 8,
        name: "tedness",
        title: "tedness",
        subtitle: "A music player app",
        desc:
          "tedness is another project from Bloc's website development class. It's a music player site, built using the React JS library. It was my first experience building a full project with React. When I took the Bloc course, we built this project multiple times: first with plain Javascript, then with incorporated jQuery, and then in Angular. However after completing the course, the curriculum changed -- substituting Angular with React. I've been interested in React since first hearing about it and had experimented with it in my free time. I decided to continue with this new part of the curriculum, and build this project after having already completed the class. Learning a new language or framework can take time. I spent about a week learning about React before jumping into this project, and having already worked with Angular I found it fairly similar. I like the idea of single page applications, encapsulating components that manage their own state. Programming in general is all about breaking down problems into manageable pieces, which is fundamental to SPAs and React. The project consists of a landing page, a library page which holds all of the albums, and then the album page. I spent a significant amount of time styling the pages to give them a unique, clean look, while using Bootstrap to assist in making it responsive. I'm looking forward to building more robust applications with Redux in the near future.",
        tech: ["JavaScript", "Angular", "React", "Bootstrap"],
        url: "https://tedness.herokuapp.com/",
        git: "https://github.com/teddylopez/tedness"
      },
      tedtalks: %{
        id: 9,
        name: "tedtalks",
        title: "Ted Talks",
        subtitle: "My first portfolio website",
        desc:
          "This was the first portfolio website I made. I spent a lot of time building a website with a simple, clean, and streamlined look.",
        tech: ["Ruby on Rails"],
        url: "https://tedlopez-portfolio.herokuapp.com/",
        git: "https://github.com/teddylopez/portfolio"
      },
      beatsbyted: %{
        id: 10,
        name: "beatsbyted",
        title: "BeatsByTed",
        subtitle: "A keyboard music player",
        desc: "Everybody hates a beatboxer, so go ahead and use this instead!",
        tech: ["JavaScript"],
        url: "https://ted-beats.herokuapp.com/index.html",
        git: "https://github.com/teddylopez/drum-kit"
      },
      tedmetrics: %{
        id: 11,
        name: "tedmetrics",
        title: "tedmetrics",
        subtitle: "Like Google Analytics if it was made by Ted",
        desc:
          "tedmetrics is a website analytics project that was also part of the Bloc curriculum. Users are able to insert a code snippet within an application that they would like to track and view the data within this application. It uses the Chartick and Groupdate gems to display those images in colorful graphs on the application show pages. A lot of my day-to-day at my current profession is analyzing website data, and I've always been interested in learning how those tools work. Users insert a custom JavaScript snippet into projects of their choice, which fires off a JSON object when an event is triggered. An external API call is made, and the event is recorded within tedmetrics. Feel free to look around the project by using the login: username: ted@tedmetrics.com password: password",
        tech: ["Ruby on Rails", "JavaScript", "ChartJS"],
        url: "https://tedmetrics.herokuapp.com/",
        git: "https://github.com/teddylopez/tedmetrics"
      },
      ted_weatherman: %{
        id: 12,
        name: "ted_weatherman",
        title: "Ted Weatherman",
        subtitle: "It can't be that cold out there",
        desc:
          "Forget the umbrella! This React application tells you the weather for whatever location you enter by fetching data from the OpenWeatherMap API.",
        tech: ["JavaScript", "React"],
        url: "https://ted-weatherman.herokuapp.com/",
        git: "https://github.com/teddylopez/weatherman"
      },
      tedspace: %{
        id: 13,
        name: "tedspace",
        title: "tedspace",
        subtitle: "My second portfolio website",
        desc:
          "tedspace is my second portfolio website built using Ruby on Rails and Postgresql. Photos and videos are hosted on AWS, blog posts were rarely updated, and there's an entire page dedicated to the worst of twitter.",
        tech: ["Ruby on Rails", "Postgresql", "AWS", "TwitterAPI"],
        url: "https://tedspace-redesign.herokuapp.com/",
        git: "https://github.com/teddylopez/tedspace"
      },
      tedlopez: %{
        id: 14,
        name: "tedlopez",
        title: "tedlopez",
        subtitle: "My latest portfolio website... this one!",
        desc:
          "I rebuilt my last portfolio website into a concise, mobile-friendly and responsive website. Initially, I built it using JavaScript and React, and most recently redesigned it with Elixir and Phoenix. You can view both codebases on my github page.",
        tech: ["Elixir", "Phoenix", "JavaScript", "React"],
        url: "http://tedlopez.us/",
        git: "https://github.com/teddylopez/tedx"
      },
      tedtracker: %{
        id: 15,
        name: "tedtracker",
        title: "tedtracker",
        subtitle: "An enterprise-ready time management application",
        desc:
          "Big Brother Ted is watching. Enter in your weekly hours or get fired! This time-management software built with Ruby on Rails and Postgresql allows employees to enter weekly billable hours or request overtime while administrators can approve or reject each submission through an admin dashboard. Custom-built tasks remind users via email to enter in all of their time by the end of the week, while admins recieve text messages when there are outstanding employee submissions that need apporoval. Get back to work!",
        tech: ["Ruby on Rails", "Postgresql", "Twilio API"],
        url: false,
        git: "https://github.com/teddylopez/tedtracker"
      },
      covid: %{
        id: 16,
        name: "covid",
        title: "COVID-19 Tracker",
        subtitle: ":/",
        desc:
          "This desktop and mobile friendly data visualization app uses ChartJS and Leaflet to display worldwide COVID-19 data provided by the disease.sh API. I don't know what to believe anymore!",
        tech: ["React", "Firebase", "ChartJS", "Leaflet", "Responsive design"],
        url: "https://covid-tracker-4acd6.web.app/",
        git: "https://github.com/teddylopez/covid-tracker"
      },
      trailer_hitch: %{
        id: 17,
        name: "trailer_hitch",
        title: "trailer_hitch",
        subtitle: "I need a new toy!",
        desc:
          "trailer_hitch is a Ruby on Rails application that scrapes the popular vehicle auction website bringatrailer.com. I built a basic frontend to view upcoming auctions, but the primary purpose of the app is to compile them in an email that gets sent to my inbox every morning and evening when there are listings that expire within the next 12 hours that are under a certain pricepoint.",
        tech: ["Ruby on Rails"],
        url: "https://trailerhitch.herokuapp.com/",
        git: "https://github.com/teddylopez/trailer_hitch"
      },
      stat_lines: %{
        id: 18,
        name: "stat_lines",
        title: "Stat Lines",
        subtitle: "Good day at the plate",
        desc:
          "Stat Lines is a basic JavaScript application that displays baseball player stats for a given game. Data is initially fetched from the backend on page-load, and uses 'infinite scrolling' that fetches more data when a user scrolls to the bottom of the table. The stat table itself is a reusable component that has the flexibilty to render different stat types depending on the player.",
        tech: ["React", "Node.js", "Postgresql"],
        url: "https://stat-lines.herokuapp.com/",
        git: "https://github.com/teddylopez/stat-lines"
      },
      scouted: %{
        id: 19,
        name: "scouted",
        title: "scouted",
        subtitle: "Not another baseball project!",
        desc:
          "scouted is an ongoing baseball project that was originally built with Ruby on Rails. Right now it's a basic scouting report app that I plan to keep building out into a complete baseball operations website, similar to what I work on professionally with the Rays and previously with the Nationals. I've been transitioning towards Elixir and it's related framework Phoenix, and have used this project as my main method of learning both. Learning new languages, technologies, and paradigms like functional programming, Ecto, and LiveView has been challenging and fun. I love how LiveView can provide nearly all of the real-time interactivity of a React or Vue Single Page Application, without having to build out a significant amount of JavaScript. I think Elixir and Phoenix can make a huge impact on web development, and I'm excited to work more with both. Take a look inside with the login 'guest@scouted.com', and password: 'password'.",
        tech: ["Phoenix", "Elixir", "tailwindcss", "Alpine.js", "LiveView"],
        url: "https://scouted.herokuapp.com/",
        git: "https://github.com/teddylopez/scouted"
      }
    }
  end
end

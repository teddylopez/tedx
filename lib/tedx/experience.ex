defmodule TedxWeb.Experience do
  def jobs do
    [
      %{
        title: "Software Developer, Baseball Systems — Baseball Operations",
        company: "Tampa Bay Rays",
        timeline: "May 2021 – Present",
        details:
          "Design and develop web applications in support of the Tampa Bay Rays Major League Baseball team."
      },
      %{
        title: "Developer, Baseball Research & Development",
        company: "Washington Nationals Baseball Club",
        timeline: "June 2018 – November 2020",
        details:
          "Design and develop web applications in support of the Baseball R&D department and the Washington Nationals. Build and maintain private internal website used for player analysis, MLB draft, scouting reports, trade inquiries, and game video and data. Frontend built using Ruby on Rails and JavaScript with Postgresql backend database."
      },
      %{
        title: "Web Developer",
        company: "Advisory Board Company",
        timeline: "June 2014 – June 2018",
        details:
          "Serve as key role in website tasks and projects at the global research, technology, and consulting firm that specializes in health care and higher education. Work alongside frontend and backend developers to build and deploy projects and solutions for the website. Created interactive Javascript tools and provided technical HTML, CSS, Javascript assistance. Sitecore administrator. Test, troubleshoot, and fix time-sensitive issues. Executed website deployments, coordinating with internal and external teams. QA and user test. Run, create the schedule, and manage advanced Sitecore training for web editors. Track development task progress. Create, update, and maintain testing plans and documentation."
      },
      %{
        title: "International Affairs Associate",
        company: "Abt Associates",
        timeline: "March 2013 – May 2014",
        details:
          "International affairs associate and data analyst at one of the largest for-profit government and business research and consulting firms in the world. Balanced program budgets and reported costs while managing organized and up-to-date spreadsheets of project-related data. One of the primary point-of-contacts for two of Abt’s largest international conferences (including airfares, hotel arrangements, passports/visas arrangements), as well as event scheduling and technical day-of support."
      },
      %{
        title: "External Affairs Intern",
        company: "In-Q-Tel",
        timeline: "October 2012 – March 2013",
        details:
          "External Affairs intern at government sponsored high-technology venture capital firm that develops products for US defense and intelligence agencies. Created and maintained communications collateral, including presentation materials and event resources for In-Q-Tel and its portfolio companies. Produced and edited multimedia content, presentations, quarterly reports, and newsletters. Edited articles to be printed in publications. Helped prepare, plan, and organize the logistics of the annual In-Q-Tel conference. Maintained company website (HTML, CSS) and writing and managing content on the SharePoint portal. Background investigated for handling of confidential and proprietary materials."
      }
    ]
  end

  def education do
    [
      %{
        school: "Bloc",
        about: "Web Development Online Bootcamp",
        timeline: "February 2017 - September 2017",
        details:
          "Immersive frontend and backend web development course. Built projects using Ruby on Rails, and Javascript frameworks Angular and React, including website analytics, APIs, and databases."
      },
      %{
        school: "Pennsylvania State University",
        about: "B.A. College of Communications, Minor in Business",
        timeline: "August 2009 - May 2012",
        details: ""
      }
    ]
  end

  def training do
    [
      ruby_on_rails: [
        %{
          link: "https://www.udemy.com/comprehensive-ruby-programming-tutorial/",
          title: "Comprehensive Ruby Programming"
        },
        %{
          link: "https://www.udemy.com/professional-rails-5-development-course/",
          title: "Dissecting Ruby on Rails 5: Become a Professional Developer"
        },
        %{
          link: "https://www.udemy.com/professional-ruby-on-rails-coding-course/",
          title: "Professional Rails Code Along"
        },
        %{
          link: "https://www.udemy.com/course/ruby-metaprogramming/",
          title: "Ruby Metaprogramming - Complete Course"
        }
      ],
      elixir: [
        %{
          link:
            "https://www.udemy.com/course/the-complete-elixir-and-phoenix-bootcamp-and-tutorial/",
          title: "The Complete Elixir and Phoenix Bootcamp"
        },
        %{
          link: "https://pragmaticstudio.com/courses/elixir",
          title: "Elixir & OTP"
        },
        %{
          link: "https://pragmaticstudio.com/courses/phoenix-liveview",
          title: "Phoenix LiveView"
        }
      ],
      javascript: [
        %{
          link: "https://www.udemy.com/jquery-course",
          title: "The Complete jQuery Course: Beginner to Professional"
        },
        %{
          link: "https://codewithmosh.com/p/the-complete-node-js-course",
          title: "The Complete Node.js Course"
        },
        %{
          link: "https://www.udemy.com/react-2nd-edition/",
          title: "The Complete React Web Developer Course (with Redux)"
        },
        %{
          link: "https://codewithmosh.com/p/mastering-react",
          title: "Mastering React"
        },
        %{
          link: "https://www.udemy.com/understand-javascript/",
          title: "JavaScript: Understanding the Weird Parts"
        },
        %{
          link: "https://codewithmosh.com/p/ultimate-redux",
          title: "The Ultimate Redux Course"
        }
      ],
      ios: [
        %{
          link: "https://www.udemy.com/ios11-app-development-bootcamp/",
          title: "iOS 11 & Swift 4: The Complete iOS App Development Bootcamp"
        }
      ],
      python: [
        %{
          link: "https://www.udemy.com/course/100-days-of-code/",
          title: "100 Days of Code - The Complete Python Pro Bootcamp for 2021"
        }
      ],
      sql: [
        %{
          link: "https://codewithmosh.com/p/complete-sql-mastery",
          title: "Complete SQL Mastery"
        }
      ]
    ]
  end

  def label_category(:elixir), do: "Elixir"
  def label_category(:ios), do: "iOS"
  def label_category(:javascript), do: "JavaScript"
  def label_category(:python), do: "Python"
  def label_category(:ruby_on_rails), do: "Ruby on Rails"
  def label_category(:sql), do: "SQL"
end

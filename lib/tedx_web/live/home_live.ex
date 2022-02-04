defmodule TedxWeb.HomeLive do
  use TedxWeb, :live_view

  alias Tedx.{Experience, HateMail}

  def mount(_params, _session, socket) do
    changeset = HateMail.change_hate_mail_form(%HateMail{})

    {:ok,
     assign(socket,
       jobs: Experience.jobs(),
       education: Experience.education(),
       training: Experience.training(),
       socket: socket,
       changeset: changeset,
       page_title: "tedlopez"
     )}
  end

  def render(assigns) do
    TedxWeb.PageView.render("home.html", assigns)
  end

  def handle_event("validate", %{"hate_mail" => params}, socket) do
    changeset =
      %HateMail{}
      |> HateMail.change_hate_mail_form(params)
      |> Map.put(:action, :insert)

    {:noreply,
     assign(socket,
       changeset: changeset
     )}
  end

  def handle_event("email", %{"hate_mail" => hate_mail}, socket) do
    HateMail.send_hate("tedmlopez@gmail.com", hate_mail)
    changeset = HateMail.change_hate_mail_form(%HateMail{})
    socket = assign(socket, changeset: changeset)

    {:noreply,
     socket
     |> put_flash(:info, "Hate mail sent!")}
  end

  def handle_params(_, _, socket) do
    {:noreply, socket}
  end
end

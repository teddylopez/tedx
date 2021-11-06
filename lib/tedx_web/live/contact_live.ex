defmodule TedxWeb.ContactLive do
  use TedxWeb, :live_view
  alias Tedx.HateMail

  def mount(_params, _session, socket) do
    changeset = HateMail.change_hate_mail_form(%HateMail{})

    {:ok,
     assign(socket,
       changeset: changeset
     )}
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
end

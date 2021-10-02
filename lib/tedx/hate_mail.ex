defmodule Tedx.HateMail do
  use Phoenix.Swoosh, view: TedxWeb.HateMailView, layout: {TedxWeb.HateMailView, :hate_mail}
  use Ecto.Schema

  import Ecto.Changeset

  alias Tedx.HateMail

  schema "hate_mail" do
    field(:name, :string)
    field(:email, :string)
    field(:message, :string)
  end

  def changeset(hate_mail, attrs) do
    hate_mail
    |> cast(attrs, [:name, :email, :message])
    |> validate_required([:name, :email, :message])
    |> validate_format(:email, ~r/@/)
    |> validate_length(:message, min: 2)
  end

  def change_hate_mail_form(%HateMail{} = hate_mail, attrs \\ %{}) do
    HateMail.changeset(hate_mail, attrs)
  end

  def send_hate(me, %{"email" => email, "message" => text_body, "name" => name} = _hate_mail) do
    new()
    |> from(email)
    |> to(me)
    |> subject("Hate Mail")
    |> reply_to({name, email})
    |> text_body(text_body)
    |> render_body("hate_mail.html", %{
      sender_name: name,
      sender_email: email,
      text_body: text_body
    })
    |> Tedx.Mailer.deliver()
  end
end

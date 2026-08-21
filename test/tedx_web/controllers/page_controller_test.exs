defmodule TedxWeb.PageControllerTest do
  use TedxWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "tedlopez"
  end
end

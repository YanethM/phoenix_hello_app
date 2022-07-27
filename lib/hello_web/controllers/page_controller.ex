defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  plug HelloWeb.Plugs.Locale, "en" when action in [:index]
  # def index(conn, _params) do
  #  render(conn, "index.html")
  # end

  # def index(conn, _params) do
  #  render(conn, "show.html", username: "joe")
  # end
  # def index(conn, _params) do
  #  conn
  #  |> put_root_layout("admin.html")
  #  |> render("index.html")
  # end

  # def index(conn, _params) do
  #  render(conn, :index)
  # end

  # Respuesta con estado
  # def index(conn, _params) do
  #  send_resp(conn, 201, "")
  # end

  # Ser específicos sobre el tipo de contenido
  # def index(conn, _params) do
  #  conn
  #  |> put_resp_content_type("text/plain")
  #  |> send_resp(201, "")
  # end

  # Mostrar una versión XML
  # def index(conn, _params) do
  #  conn
  #  |> put_resp_content_type("text/xml")
  #  |> render("index.xml")
  # end

  # def index(conn, _params) do
  #  conn
  #  |> put_status(202)
  #  |> render("index.html")
  # end

  # Opción 1:
  # def index(conn, _params) do
  #  redirect(conn, to: "/redirect_test")
  # end

  # Opción 2:
  # def index(conn, _params) do
  #  redirect(conn, to: Routes.page_path(conn, :redirect_test))
  # end

  # Función que se necesita para ejecutar la opción2 de redireccionamiento
  # def redirect_test(conn, _params) do
  #  render(conn, "index.html")
  # end

  # Redireccionar a una página externa
  # def index(conn, _params) do
  #  redirect(conn, external: "https://elixir-lang.org/")
  # end

  # Mensajes flash tipo alerts
  # def index(conn, _params) do
  #  conn
  #  |> put_flash(:info, "Welcome to Phoenix, from flash info!")
  #  |> put_flash(:error, "Let's pretend we have an error.")
  #  |> render("index.html")
  # end

  def show(conn, _params) do
    page = %{title: "foo"}

    render(conn, "show.json", page: page)
  end

  def index(conn, _params) do
    pages = [%{title: "foo"}, %{title: "bar"}]

    render(conn, "index.json", pages: pages)
  end
end

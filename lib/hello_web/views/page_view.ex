defmodule HelloWeb.PageView do
  use HelloWeb, :view
  # def render("index.html", assigns) do
  #  "rendering with assigns #{inspect Map.keys(assigns)}"
  # end

  #def render("index.json", %{pages: pages}) do
  #  %{data: Enum.map(pages, fn page -> %{title: page.title} end)}
  #end

  #def render("show.json", %{page: page}) do
  #  %{data: %{title: page.title}}
  #end


  def render("index.json", %{pages: pages}) do
    %{data: render_many(pages, HelloWeb.PageView, "page.json")}
  end

  def render("show.json", %{page: page}) do
    %{data: render_one(page, HelloWeb.PageView, "page.json")}
  end

  def render("page.json", %{page: page}) do
    %{title: page.title}
  end
end

defmodule HelloWeb.LayoutView do
  use HelloWeb, :view

  def title do
    "Awesome New Title!"
  end
   @compile {:no_warn_undefined, {Routes, :live_dashboard_path, 2}}
end

defmodule EvaIconTest do
  use ExUnit.Case, async: true

  import Phoenix.Component
  import Phoenix.LiveViewTest

  test "renders icon" do
    html = render_component(&EvaIcon.slash/1, [])
    assert html =~ "<svg"
  end

  test "renders icon with class" do
    html = render_component(&EvaIcon.text/1, class: "h-4 w-4")
    assert html =~ ~s(<svg class="h-4 w-4")
  end

  test "renders icon with assigns" do
    html = render_component(&EvaIcon.text/1, "aria-hidden": false)
    assert html =~ ~s(<svg aria-hidden="false")
  end
end

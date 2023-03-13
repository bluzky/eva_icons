defmodule EvaIcon.MixProject do
  use Mix.Project

  @version "1.0.0"
  @github_url "https://github.com/bluzky/eva_icons"

  def project do
    [
      app: :eva_icons,
      version: @version,
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      description: description(),
      package: package(),
      source_url: @github_url
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:phoenix_html, "~> 3.2"},
      {:phoenix_live_view, "~> 0.17", optional: true},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "EvaIcon",
      source_ref: "v#{@version}",
      source_url: @github_url,
      groups_for_modules: [LiveView: ~r/EvaIcon.LiveView/],
      nest_modules_by_prefix: [EvaIcon.LiveView],
      extras: ["README.md"]
    ]
  end

  defp description do
    """
    This package adds a convenient way of using Eva icon
    with your Phoenix and Phoenix LiveView applications.
    """
  end

  defp package do
    %{
      files: ~w(lib priv .formatter.exs mix.exs README.md LICENSE),
      licenses: ["BSD-3-Clause"],
      links: %{"GitHub" => @github_url}
    }
  end
end

defmodule PhoenixMetaTags.MixProject do
  use Mix.Project

  @source_url "https://github.com/hlongvu/phoenix_meta_tags"
  @version "0.1.9"

  def project do
    [
      app: :phoenix_meta_tags,
      name: "Phoenix Meta Tags",
      version: @version,
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:phoenix_html, "~> 2.10 or ~> 3.0"},
      {:plug, "~> 1.7"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: "phoenix_meta_tags",
      description: "A Phoenix library helps to generate meta tags for website.",
      maintainers: ["hlongvu"],
      licenses: ["MIT"],
      files: ~w(lib .formatter.exs mix.exs README*),
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      extras: [
        "LICENSE.md": [title: "License"],
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      source_url: @source_url,
      source_ref: @version,
      formatters: ["html"]
    ]
  end
end

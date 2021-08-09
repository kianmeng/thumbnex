defmodule Thumbnex.Mixfile do
  use Mix.Project

  @source_url "https://github.com/talklittle/thumbnex"
  @version "0.3.5"

  def project do
    [
      app: :thumbnex,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:mogrify, "~> 0.9.0"},
      {:ffmpex, "~> 0.7.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      description: "Create thumbnails from images and video screenshots.",
      files: ["lib", "mix.exs", "README*", "CHANGELOG*", "LICENSE*"],
      maintainers: ["Andrew Shu"],
      licenses: ["MIT"],
      links: %{
        "Changelog" => "https://hexdocs.pm/thumbnex/changelog.html",
        "GitHub" => @source_url
      }
    ]
  end

  defp docs do
    [
      extras: [
        "CHANGELOG.md": [],
        "LICENSE.md": [],
        "README.md": []
      ],
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      formatters: ["html"]
    ]
  end
end

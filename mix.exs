defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      name: "Isues",
      source_url: "https://github.com/VictorLandim/elixir-github-issues-cli",
      escript: escript_config(),
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.0.0"},
      {:poison, "~> 3.1"},
      {:ex_doc, "~> 0.22.2"},
      {:earmark, "~> 1.4.10"},
      {:excoveralls, "~> 0.13.1", only: :test}
    ]
  end

  defp escript_config do
    [
      main_module: Issues.Cli
    ]
  end
end

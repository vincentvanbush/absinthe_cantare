defmodule AbsintheCantare.Mixfile do
  use Mix.Project

  def project do
    [
      app: :absinthe_cantare,
      version: "0.1.0",
      elixir: "~> 1.7",
      description: "Absinthe middleware for Cantare, a declarative, Ecto-aware authorization rules library for Elixir",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      name: "Absinthe Cantare",
      source_url: "https://github.com/vincentvanbush/absinthe_cantare"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, System.get_env("ECTO_TEST_VERSION") || ">= 2.2.0"},
      {:ex_doc, only: :dev}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/vincentvanbush/absinthe_cantare"}
    ]
  end
end

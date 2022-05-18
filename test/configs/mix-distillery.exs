defmodule Mydist.Mixfile do
  use Mix.Project

  def project do
    [app: :eco,
     version: "0.1.0",
     elixir: "~> 1.11",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:sasl, :edeliver],
     mod: {:eco_app, []}]
  end

  defp deps do
    [{:lager, "~> 3.6.7"},
     {:ranch, "~> 1.6.2"},
     {:distillery, "~> 2.0"},
     {:edeliver, "~> 1.9.0-rc.2"}]
  end
end
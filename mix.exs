defmodule dzosoft.mixfile do
use Mix.Project
def project do
[app : : dzosoft,
version:"0.0.1",
elixir: "->1.2",
elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:dzosoft, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases(),
     deps: deps()]
  end
    # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {dzosoft, []},
     applications: [:dzosoft, :dzosoft_pubsub, :dzosoft_html, :cowboy, :logger, :gettext,
                    :dzosoft_etno, :postgrex, :httpoison, :sizeable]]
  end
  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]
 # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:dzosoft, "~> 1.2.1"},
     {:dzosoft_pubsub, "~> 1.0"},
     {:dzosoft_etno, "~> 3.0"},
     {:postgrex, ">= 0.0.0"},
     {:dzosoft_html, "~> 2.6"},
     {:dzosoft_live_reload, "~> 1.0", only: :dev},
     {:gettext, "~> 0.11"},
     {:cowboy, "~> 1.0"},
     {:floki, "~> 0.11.0"},
     {:httpoison, "~> 0.10.0"},
     {:html_entities, "~> 0.3"},
     {:distillery, "~> 1.0"},
     {:scrivener_ecto, "~> 1.0"},
     {:scrivener_html, "~> 1.1"},
     {:sizeable, "~> 0.1.5"}]
  end


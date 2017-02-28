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
    [mod: {Magnetissimo, []},
     applications: [:dzosoft, :dzosoft_pubsub, :dzosoft_html, :cowboy, :logger, :gettext,
                    :dzosoft_etno, :postgrex, :httpoison, :sizeable]]
  end


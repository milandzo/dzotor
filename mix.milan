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


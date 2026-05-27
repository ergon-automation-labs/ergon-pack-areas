defmodule ErgonPackAreas.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :ergon_pack_areas,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [
        areas_pack: [
          applications: [
            bot_army_library_runtime: :permanent,
            bot_army_library_core: :permanent,
            bot_army_library_learning: :permanent,
            bot_army_fitness: :permanent,
            bot_army_chore: :permanent,
            bot_army_rpg: :permanent,
            ergon_pack_areas: :permanent
          ]
        ]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {ErgonPackAreas.Application, []}
    ]
  end

  defp deps do
    [
      {:bot_army_library_core, path: "../bot_army_library_core"},
      {:bot_army_library_runtime, path: "../bot_army_library_runtime"},
      {:bot_army_library_learning, path: "../bot_army_library_learning"},
      {:bot_army_fitness, path: "../bot_army_fitness"},
      {:bot_army_chore, path: "../bot_army_chore"},
      {:bot_army_rpg, path: "../bot_army_rpg"}
    ]
  end
end

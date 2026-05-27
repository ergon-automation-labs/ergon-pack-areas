import Config

config :bot_army_library_runtime, :pack_mode, true

config :bot_army_fitness, :start_repo, true
config :bot_army_chore, :start_repo, true
config :bot_army_rpg, :start_repo, true

import_config "#{config_env()}.exs"
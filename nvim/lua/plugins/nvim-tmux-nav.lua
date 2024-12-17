local util = require("config.util")
return {
  "christoomey/vim-tmux-navigator",
  lazy = not util.tmux_present(),
}

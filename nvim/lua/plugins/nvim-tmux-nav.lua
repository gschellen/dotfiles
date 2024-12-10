local util = require("util")
return
{
  "christoomey/vim-tmux-navigator",
  lazy = not util.tmux_present(),
}

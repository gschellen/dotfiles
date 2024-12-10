return {
 -- check if we are inside tmux
  tmux_present = function()
    return os.getenv("TMUX") ~= nil
  end
}

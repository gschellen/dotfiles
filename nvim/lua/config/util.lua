return {
  -- check if we are inside tmux
  tmux_present = function()
    return os.getenv("TMUX") ~= nil
  end,

  count_modified_buffers = function()
    local buffers = vim.fn.getbufinfo()
    local count = 0
    for _, buf in ipairs(buffers) do
      if buf.changed == 1 then
        count = count + 1
      end
    end
    return count
  end,
}

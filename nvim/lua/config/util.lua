function ContainsAnyStringInList(str, list)
  for _, value in ipairs(list) do
    if string.find(str, value) then
      return true
    end
  end
  return false
end

local bufferIgnoreList = { "dap%-repl" }

return {
  -- check if we are inside tmux
  tmux_present = function()
    return os.getenv("TMUX") ~= nil
  end,

  contains_any_string_in_list = function(str, list)
    return ContainsAnyStringInList(str, list)
  end,

  count_modified_buffers = function()
    local buffers = vim.fn.getbufinfo()
    local count = 0
    for _, buf in ipairs(buffers) do
      if not ContainsAnyStringInList(buf.name, bufferIgnoreList) then
        if buf.changed == 1 then
          count = count + 1
        end
      end
    end
    return count
  end,
}

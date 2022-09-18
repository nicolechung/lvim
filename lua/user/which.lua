local M = {}

M.setup = function()

  -- Rip grep find
  -- "SomeText" ttsx /path/to/directory
  lvim.builtin.which_key.mappings["sT"] = {
    "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
    "SuperFind"
  }


end


return M

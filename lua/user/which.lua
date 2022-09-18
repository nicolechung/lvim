local M = {}

M.setup = function()

  -- Rip grep find
  -- Example:
  -- "SomeText" thbs /path/to/directory
  -- finds template/handlebar files containing "SomeText" in a path/to/directory
  lvim.builtin.which_key.mappings["sT"] = {
    "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
    "SuperFind"
  }


end


return M

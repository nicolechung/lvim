local M = {}

M.setup = function()

  -- Rip grep find
  -- Example:
  -- "SomeText" thbs /path/to/directory
  -- finds template/handlebar files containing "SomeText" in a path/to/directory
  lvim.builtin.which_key.mappings["sT"] = {
    "<Plug>CtrlSFPrompt",
    "CtrlSF"
  }

  -- jsdoc
  lvim.builtin.which_key.mappings["D"] = {
    "<cmd>DogeGenerate javascript<CR>",
    "JSDoc"
  }



end


return M

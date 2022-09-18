local M = {}

M.setup = function()

  local formatters = require "lvim.lsp.null-ls.formatters"
  formatters.setup {
    {
      command = "prettier",
    },
  }

  -- local code_actions = require "lvim.lsp.null-ls.code_actions"
  -- code_actions.setup {
  --   {
  --     command = "eslint",
  --   },
  -- }
  -- -- set additional linters
  local linters = require "lvim.lsp.null-ls.linters"
  linters.setup {
    { command = "eslint" }
  }
end

return M

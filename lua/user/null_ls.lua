local M = {}

M.setup = function()

  local formatters = require "lvim.lsp.null-ls.formatters"
  formatters.setup {
    -- {
    --   command = "prettier",
    -- },
    {
      command = "eslint_d",
      filetypes = { "javascript", "typescript", "handlebars", "hbs" }
    },
    {
      command = "stylelint"
    }
  }

  local code_actions = require "lvim.lsp.null-ls.code_actions"
  code_actions.setup {
    {
      command = "eslint",
      -- disabled for hbs for now
      filetypes = { "javascript", "typescript" },
    },
  }
  -- set additional linters
  local linters = require "lvim.lsp.null-ls.linters"
  linters.setup {
    {
      command = "eslint",
      filetypes = { "javascript", "typescript", "handlebars", "hbs" },
    }
  }
end

return M

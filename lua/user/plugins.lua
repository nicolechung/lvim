local M = {}

M.setup = function()
  lvim.plugins = {
    { "folke/tokyonight.nvim", commit = "81f0db1" },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
      commit = "929315e"
    },
    { "hrsh7th/cmp-cmdline", commit = "c66c379" },
    { 'weilbith/nvim-code-action-menu', commit = "ee59940", cmd = 'CodeActionMenu' },
    { 'mattn/emmet-vim', commit = "def5d57" },
    -- jsdoc
    { 'kkoomen/vim-doge', commit = "44fcf46", run = ":call doge#install()" },
    -- autotag
    {
      "windwp/nvim-ts-autotag",
      commit = "fdefe46",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },
    { 'dyng/ctrlsf.vim' },
    {
    'mhartington/formatter.nvim',
    config = function()
    -- Utilities for creating configurations
      local prettierConfig = function()
        return {
          exe = "./node_modules/.bin/prettier",
          args = {"--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)), "--single-quote"},
          stdin = true
        }
      end
      local eslintConfig =  function()
          return {
            exe = "./node_modules/.bin/eslint",
            args = {"--stdin","--stdin-filename", vim.api.nvim_buf_get_name(0) },
            stdin = true
          }
        end

      -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
      require("formatter").setup {
        -- All formatter configurations are opt-in
        filetype = {
          -- lua = {function() return {exe = "lua-format", stdin = true} end},
          json = { prettierConfig },
          html = { prettierConfig },
          typescript = { prettierConfig, eslintConfig },
          javascript = { prettierConfig, eslintConfig },
          handlebars = { eslintConfig },
          ['typescript.glimmer']  = { prettierConfig, eslintConfig },
          ['javascript.glimmer']  = { prettierConfig, eslintConfig },

          -- Use the special "*" filetype for defining formatter configurations on
          -- any filetype
          ["*"] = {
            -- "formatter.filetypes.any" defines default configurations for any
            -- filetype
            require("formatter.filetypes.any").remove_trailing_whitespace
          }
        }
      }
    end
    } -- end formatter setup
  }
end

return M

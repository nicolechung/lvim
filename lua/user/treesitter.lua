local M = {}

M.setup = function()

  -- if you don't want all the parsers change this to a table of the ones you want
  lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "css",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "python",
    "typescript",
    "tsx",
    "scss",
    "rust",
    "java",
    "yaml",
    "glimmer",
    "vim",
    "vue"
  }

  lvim.builtin.treesitter.ignore_install = { "haskell" }
  lvim.builtin.treesitter.highlight.enabled = true

  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "zsh", "aliases" },
    callback = function()
      -- let treesitter use bash highlight for zsh files as well
      require("nvim-treesitter.highlight").attach(0, "bash")
    end,
  })
end

return M

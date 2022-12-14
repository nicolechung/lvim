--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = {
  pattern = "*",
  -- avoid null_ls timeouts
  timeout = 5000,
  filter = require("lvim.lsp.utils").format_filter,
}

-- lvim.format_on_save = false
lvim.builtin.project.patterns = { ".git", "falcon-console" }
-- end work specific
lvim.colorscheme = "onedarker"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
-- =======================================
require("user.keybindings").setup()


-- null_ls
-- =======================================
require("user.null_ls").setup()
require('user.which').setup();
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
-- <cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false


-- lsp (language server)
-- =======================================
require('user.lsp').setup();

-- treesitter
-- =======================================
require('user.treesitter').setup()

-- telescope
-- =======================================
require('user.telescope').setup();

-- plugins
-- =======================================
require('user.plugins').setup()

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })

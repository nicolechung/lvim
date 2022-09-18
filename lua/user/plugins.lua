local M = {}

M.setup = function()
  lvim.plugins = {
    { "folke/tokyonight.nvim" },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    { "nvim-telescope/telescope-live-grep-args.nvim" },
    { "hrsh7th/cmp-cmdline" },
    { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },
    { 'mattn/emmet-vim' },
  }
end

return M

local M = {}

M.setup = function()
  lvim.plugins = {
    { "folke/tokyonight.nvim", commit = "81f0db1" },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
      commit = "929315e"
    },
    { "nvim-telescope/telescope-live-grep-args.nvim", commit = "32b633b" },
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

  }
end

return M

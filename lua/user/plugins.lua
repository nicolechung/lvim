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
    -- jsdoc
    { 'kkoomen/vim-doge', run = 'npm i --no-save && npm run build:binary:unix' },
    -- autotag
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },

  }
end

return M

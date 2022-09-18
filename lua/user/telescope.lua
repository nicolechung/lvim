local M = {}

M.setup = function()

  -- Telescope
  lvim.builtin.telescope.on_config_done = function(telescope)
    pcall(telescope.load_extension, "live_grep_args")
    -- any other extensions loading
  end
  -- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
  -- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
  local _, actions = pcall(require, "telescope.actions")
  lvim.builtin.telescope.defaults.mappings = {
    -- for input mode
    i = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-n>"] = actions.cycle_history_next,
      ["<C-p>"] = actions.cycle_history_prev,
    },
    -- for normal mode
    n = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
    },
  }

end

return M

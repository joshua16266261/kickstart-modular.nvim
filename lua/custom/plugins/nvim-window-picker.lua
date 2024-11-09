-- window-picker
-- https://github.com/s1n7ax/nvim-window-picker

return {
  's1n7ax/nvim-window-picker',
  name = 'window-picker',
  event = 'VeryLazy',
  version = '2.*',
  config = function()
    local picker = require 'window-picker'
    picker.setup {
      hint = 'floating-big-letter',
      show_prompt = false,
      filter_rules = {
        autoselect_one = true,
        include_current_win = true,
        bo = {},
      },
    }

    vim.keymap.set('n', '<leader>jw', function()
      local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
      vim.api.nvim_set_current_win(picked_window_id)
    end, { desc = '[J]ump to [W]indow' })
  end,
}

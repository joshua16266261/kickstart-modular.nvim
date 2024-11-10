return {
  'rmagatti/auto-session',
  config = function()
    local auto_session = require 'auto-session'

    auto_session.setup {
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { '~/', '~/Downloads', '~/Documents', '~/Desktop' },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>ar', '<cmd>SessionRestore<CR>', { desc = '[A]uto-session [R]estore' })
    keymap.set('n', '<leader>as', '<cmd>SessionSave<CR>', { desc = '[A]uto-session [S]ave' })
  end,
}

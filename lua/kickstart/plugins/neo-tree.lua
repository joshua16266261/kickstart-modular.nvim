-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.keymap.set('n', '<leader>tf', ':Neotree toggle<CR>', { desc = '[T]oggle [F]iletree' })
vim.keymap.set('n', '<leader>tg', function()
  local reveal_file = vim.fn.expand '%:p'
  if reveal_file == '' then
    reveal_file = vim.fn.getcwd()
  else
    local f = io.open(reveal_file, 'r')
    if f then
      f.close(f)
    else
      reveal_file = vim.fn.getcwd()
    end
  end
  require('neo-tree.command').execute {
    action = 'focus', -- OPTIONAL, this is the default value
    source = 'git_status',
    position = 'float',
    reveal_file = reveal_file, -- path to file or folder to reveal
  }
end, { desc = '[T]oggle [G]it status' })

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  opts = {
    enable_git_status = true,
    enable_diagnostics = true,
    window = {
      mappings = {
        ['<cr>'] = 'open_with_window_picker',
      },
      width = 50,
    },
  },
}

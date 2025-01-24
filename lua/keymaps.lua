-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing '<Esc>' in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Go back to previous tag
-- Can be used to walk back [G]oto [D]efinition
vim.keymap.set('n', 'gb', '<C-t>', { desc = '[G]o [B]ack' })

vim.keymap.set('n', '<leader>op', ':e#<CR>', { desc = '[O]pen [P]revious file' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Create new lines above/below without going into insert mode
vim.keymap.set('n', '<CR>', 'o<Esc>')
vim.keymap.set('n', '<leader><CR>', 'O<Esc>')

vim.keymap.set('n', '<leader>ms', ':MaximizerToggle<CR>', { desc = '[M]aximize [S]plit' })

vim.keymap.set('v', '<leader>rly', 'd<cr>"0P', { desc = '[R]eplace with [L]ast [Y]ank' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank { timeout = 300 }
  end,
})

vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    vim.opt.formatoptions:remove { 'c', 'r', 'o' }
  end,
  group = vim.api.nvim_create_augroup('General', { clear = true }),
  desc = 'Disable new line comment',
})
-- vim: ts=2 sts=2 sw=2 et

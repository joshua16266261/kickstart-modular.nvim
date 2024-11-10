return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'folke/todo-comments.nvim' },
  keys = {
    { '<leader>xx', '<cmd>TroubleToggle<CR>', desc = '[X]Trouble [X]List Toggle' },
    { '<leader>xw', '<cmd>TroubleToggle workspace_diagnostic<CR>', desc = '[X]Trouble [W]orkspace' },
    { '<leader>xd', '<cmd>TroubleToggle document_diagnostics<CR>', desc = '[X]Trouble [D]ocument' },
    { '<leader>xq', '<cmd>TroubleToggle quickfix<CR>', desc = '[X]Trouble [Q]uickfixes' },
    { '<leader>xl', '<cmd>TroubleToggle loclist<CR>', desc = '[X]Trouble [L]ocations' },
    { '<leader>xt', '<cmd>TodoTrouble<CR>', desc = '[X]Trouble [T]odos' },
  },
}

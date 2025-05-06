return {
  'hedyhli/outline.nvim',
  config = function()
    -- Example mapping to toggle outline
    vim.keymap.set('n', '<leader>to', '<cmd>Outline<CR>', { desc = '[T]oggle [O]utline' })

    require('outline').setup {}
  end,
}

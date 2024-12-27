return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    size = function(term)
      if term.direction == 'horizontal' then
        return 30
      elseif term.direction == 'vertical' then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<leader>tt]],
    direction = 'horizontal',
    start_in_insert = true,
    close_on_exit = true,
    insert_mappings = false,
    terminal_mappings = true,
  },
}

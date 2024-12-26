return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    open_mapping = [[<leader>tt]],
    direction = 'float',
    float_opts = {
      border = 'curved',
      title_pos = 'center',
      height = 50,
    },
    start_in_insert = true,
    close_on_exit = true,
    insert_mappings = true,
    terminal_mappings = true,
  },
}

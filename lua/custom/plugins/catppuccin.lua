return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        custom_highlights = function(colors)
          return {
            CursorLineNr = { fg = colors.flamingo },
            LineNrAbove = { fg = colors.overlay0 },
            LineNrBelow = { fg = colors.overlay0 },
            WinSeparator = { fg = colors.flamingo },
          }
        end,
      }
    end,
    init = function()
      -- Load the colorscheme here.
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}

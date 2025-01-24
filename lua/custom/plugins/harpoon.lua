-- harpoon
-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = '[H]arpoon [A]dd' })

    vim.keymap.set('n', '<leader>ht', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[H]arpoon [T]oggle' })

    vim.keymap.set('n', '<leader>hj', function()
      harpoon:list():select(1)
    end, { desc = '[H]arpoon Select 1st' })
    vim.keymap.set('n', '<leader>hk', function()
      harpoon:list():select(2)
    end, { desc = '[H]arpoon Select 2nd' })
    vim.keymap.set('n', '<leader>hl', function()
      harpoon:list():select(3)
    end, { desc = '[H]arpoon Select 3rd' })
    vim.keymap.set('n', '<leader>h;', function()
      harpoon:list():select(4)
    end, { desc = '[H]arpoon Select 4th' })

    vim.keymap.set('n', '<leader>hn', function()
      harpoon:list():next()
    end, { desc = '[H]arpoon [N]ext' })
    vim.keymap.set('n', '<leader>hp', function()
      harpoon:list():prev()
    end, { desc = '[H]arpoon [P]revious' })

    -- basic telescope config
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<leader>ho', function()
      toggle_telescope(harpoon:list())
    end, { desc = '[H]arpoon [O]pen' })
  end,
}

config = function() require'nvim-tree'.setup {} end

local map = vim.api.nvim_set_keymap

map('n', 'n', [[:NvimTreeToggle<CR>]], {})

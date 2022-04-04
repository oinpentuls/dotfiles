local map = vim.api.nvim_set_keymap

map('n', '<C-p>', [[:Telescope find_files<CR>]], {noremap=true})
map('n', ';r', [[:Telescope find_files<CR>]], {noremap=true})


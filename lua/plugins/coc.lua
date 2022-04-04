local set = vim.opt

set.hidden = true
set.backup = false
set.writebackup = false
set.cmdheight = 2
set.updatetime = 300
set.shortmess = set.shortmess + 'c'

local map = vim.api.nvim_set_keymap

map('n', 'gd', [[<Plug>(coc-definition)]], {silent=true})
map('n', 'K', [[:call CocActionAsync('doHover')<CR>]], {noremap=true, silent=true})
map('n', '<leader>f', [[:CocCommand prettier.formatFile<CR>]], {noremap=true})
map('i', '<TAB>', [[pumvisible() ? '<C-n>' : '<TAB>']], {noremap=true, silent=true, expr=true})
map('i', '<S-TAB>', [[pumvisible() ? '<C-p>' : '<C-h>']], {noremap=true, expr=true})
map('i', '<CR>', [[pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>' ]], {noremap=true, silent=true, expr=true})

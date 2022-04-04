vim.opt.clipboard='unnamedplus'

vim.g.mapleader=','

vim.cmd([[ filetype plugin indent on ]])

require('plugins.plugin-setup')
require('vars')
require('opts')
require('keymaps')

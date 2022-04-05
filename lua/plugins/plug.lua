-- vim.cmd [[packadd packer.nvim]]
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plug.lua source <afile> | PackerCompile
    augroup end
]])
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    use { 'windwp/nvim-autopairs' }
    use 'voldikss/vim-floaterm'
    use 'Mofiqul/dracula.nvim'
    use 'marko-cerovac/material.nvim'
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'preservim/nerdcommenter'
    use 'jakwings/vim-pony'
    use "lukas-reineke/indent-blankline.nvim"
end)

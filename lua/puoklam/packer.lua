-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- color scheme
	-- use({
	-- 	'rose-pine/neovim',
	-- 	as = 'rose-pine',
	-- 	config = function()
	-- 		vim.cmd('colorscheme rose-pine')
	-- 	end
	-- })
	use('folke/tokyonight.nvim')

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
    use('windwp/nvim-autopairs')
    use('windwp/nvim-ts-autotag')
    -- use('nvim-tree/nvim-tree.lua')
    use('JoosepAlviste/nvim-ts-context-commentstring')
    use('numToStr/Comment.nvim')
	use('mg979/vim-visual-multi')
	use('justinmk/vim-sneak')
	use('airblade/vim-gitgutter')
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}
	use{
		'akinsho/bufferline.nvim',
		requires = 'nvim-tree/nvim-web-devicons'
	}
	use {
		'goolord/alpha-nvim',
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
end)

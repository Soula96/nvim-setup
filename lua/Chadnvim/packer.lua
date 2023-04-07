-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- Telescope plugin - lets you search for files (grep, fuzzy finder etc.)
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  --tokyonight - colorscheme for nvim
  use "folke/tokyonight.nvim"
  --Treesitter - plugin to color syntax accurately
  use ('nvim-treesitter/nvim-treesitter',  {run = ':TSUpdate'})
  --Harpoon - Tool for quickly jumping in between often used files
  use('theprimeagen/harpoon')
  --undo tree - provides a git like tree of different undo branches
  use('mbbill/undotree')
  --provides Git functionality in nvim!
  use('tpope/vim-fugitive')

  -- LSP zero - language server protocol and autocompletion,
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }
  --lualine - status bar with extra info at bottom of screen
  use {
	  'nvim-lualine/lualine.nvim',
	  requieres = { 'kyazdani42/nvim-web-devicons', opt =true}
  }
  -- extra icons to display additional nerd info like language, file, system and git status
  use 'nvim-tree/nvim-web-devicons'

end)


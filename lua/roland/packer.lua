vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({ 'rose-pine/neovim', as = 'rose-pine', config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons', -- optional
	  },
	}

	use {
        	"folke/which-key.nvim",
  		config = function()
    			vim.o.timeout = true
    			vim.o.timeoutlen = 30
			require("which-key").setup {
				-- your configuration comes here
	      			-- or leave it empty to use the default settings
	      			-- refer to the configuration section below
	    		}
  		end
	}

	
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use("theprimeagen/harpoon")
	use("tpope/vim-fugitive")
	
	use({
		"neovim/nvim-lspconfig",
	       requires = {
		        'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			{ 'j-hui/fidget.nvim', opts = {} },
			'folke/neodev.nvim',
	       },
        })

	use({
    		"jose-elias-alvarez/null-ls.nvim"
    	})

       -- Autocompletion
       use({
    		'hrsh7th/nvim-cmp',
    		requires = { 'hrsh7th/cmp-nvim-lsp' }
	})

	-- Adds git releated signs to the gutter, as well as utilities for managing changes
	use {  
		'lewis6991/gitsigns.nvim',
 	}

	use {
		'nvim-lualine/lualine.nvim'
  	}

	-- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

end)

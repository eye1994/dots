vim.g.mapleader = " "
vim.o.hlsearch = false
vim.wo.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.o.mouse = 'a'
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.opt.smartindent = true

-- Diagnostic keymaps
vim.keymap.set('n', 'dp', vim.diagnostic.goto_prev, { desc = "Go to [D]iagnostic message [P]revious" })
vim.keymap.set('n', 'dn', vim.diagnostic.goto_next, { desc = "Go to [D]iagnostic message [N]ext" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating [E]rror message" })
vim.keymap.set('n', '<leader>el', vim.diagnostic.setloclist, { desc = "Open [E]rror [L]ist" })

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

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
      require("which-key").setup {}
    end
  }


  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use("tpope/vim-fugitive")

  use({
    "neovim/nvim-lspconfig",
    requires = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
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

  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  }

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    'mbbill/undotree'
  }

  use {
    'ThePrimeagen/vim-be-good'
  }

  use { "catppuccin/nvim", as = "catppuccin" }

  use {
    'dracula/vim',
    as = 'dracula',
  }

  use 'folke/tokyonight.nvim'
end)

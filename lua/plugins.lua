local success, packer = pcall(require, "packer")
if (not success) then
  print("Packer not found!")
  return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- LSP Base
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'neovim/nvim-lspconfig' }

  -- Autocompletion
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-cmdline" }
  use { "hrsh7th/cmp-vsnip" }
  use { "hrsh7th/vim-vsnip" }
  use { "onsails/lspkind-nvim" }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "windwp/nvim-ts-autotag" }

  -- File explorer
  use "kyazdani42/nvim-web-devicons"
  use {
    "kyazdani42/nvim-tree.lua",
    config = "require('plugins.tree')",
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly'
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    }
  }

  -- Theme
  use "ayu-theme/ayu-vim"
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }

  -- Git
  use "airblade/vim-gitgutter"

  -- ------------ LANGUAGUES -------------
  -- Rust
  use "simrat39/rust-tools.nvim"
  -- Flutter
  use {
    "akinsho/flutter-tools.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("config.flutter").setup()
    end,
  }
end)

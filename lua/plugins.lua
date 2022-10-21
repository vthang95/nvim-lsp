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
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Theme
  use "ayu-theme/ayu-vim"

  -- Languages
  use "simrat39/rust-tools.nvim"
end)

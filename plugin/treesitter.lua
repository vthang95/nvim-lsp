require'nvim-treesitter.configs'.setup {
  ensure_installed = {"elixir", "heex", "eex"},
  highlight = {
    enable = true
  },
  autopairs = {
    enable = true
  },
  -- Need to run: TSInstall tsx, html
  autotag = {
    enable = true,
    filetypes = { 'html', 'xml', 'tsx', 'jsx', 'typescriptreact', 'ex', 'exs' }
  }
}

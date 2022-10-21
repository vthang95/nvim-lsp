require'nvim-treesitter.configs'.setup {
  autopairs = {
    enable = true
  },
  -- Need to run: TSInstall tsx, html
  autotag = {
    enable = true,
    filetypes = { 'html', 'xml', 'tsx', 'jsx', 'typescriptreact' }
  }
}

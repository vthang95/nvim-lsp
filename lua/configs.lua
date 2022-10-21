vim.g.colors_name = 'ayu'

local config = {
  encoding = 'utf-8',
  autoread = true,
  autoindent = true,
  foldmethod = 'indent',
  foldlevelstart = 99,
  hlsearch = true,
  background = 'dark',
  colorcolumn = '100',
  termguicolors = true,
  list = true,
  number = true,
  listchars = { tab = '▸ ',trail = '·' },
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true
}

for i, v in pairs(config) do
  vim.opt[i] = v
end

vim.api.nvim_set_hl(0, 'ExtraWhitespace', { ctermbg = 'red', bg = 'red', fg = 'white' })
vim.api.nvim_set_hl(0, 'SpecialKey', { ctermbg = 'red', bg = '#ff0000' })

-- Highlight trailing whitespace
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  pattern = { '*' },
  command = [[match ExtraWhitespace /\s\+$/]]
})

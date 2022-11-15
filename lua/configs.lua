vim.g.colors_name = 'ayu'

local config = {
  encoding = 'utf-8',
  autoread = true,
  autoindent = true,
  smartindent = true,
  foldmethod = 'indent',
  updatetime = 100,
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

-- Global clipboard
vim.opt.clipboard = 'unnamedplus'

-- Use this if you want it to automatically show all diagnostics on the
-- current line in a floating window. Personally, I find this a bit
-- distracting and prefer to manually trigger it (see below). The
-- CursorHold event happens when after `updatetime` milliseconds. The
-- default is 4000 which is much too long

vim.o.updatetime = 100

-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end

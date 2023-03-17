-- vim.g.colors_name = 'tender'
-- vim.g.ayucolor = 'dark'
vim.cmd.colorscheme 'melange'

local config = {
  encoding = 'utf-8',
  autoread = true,
  autoindent = true,
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
  expandtab = true,
  colorcolumn = '120'
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
--[[
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  pattern = { '*.ts*' },
  command = vim.cmd.colorscheme('gruvbox')
}) ]]

-- Global clipboard
vim.opt.clipboard = 'unnamedplus'

vim.o.updatetime = 50

-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  command = "setlocal shiftwidth=4 tabstop=4"
})

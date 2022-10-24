vim.cmd('filetype plugin on')

vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

keymap.set('', '<leader>ok', ':noh<CR>')

keymap.set('', '<C-/>', vim.lsp.buf.hover, {})

-- Quit current buffer
keymap.set('', '<leader>q', '<Cmd>BufferClose<CR>', {})
-- keymap.set('', '<leader>q', '<C-w>q<CR>', {})

-- Jump to the first non-black character of the line
keymap.set('', '<', '^')

-- Jump to the end of the line
keymap.set('', '>', '$')

-- Handle Tab
keymap.set('v', '<Tab>', '>gv')
keymap.set('v', '<S-Tab>', '<gv')
keymap.set('i', '<S-Tab>', '<C-d>')
keymap.set('n', '<S-Tab>', '<<')
keymap.set('n', '<Tab>', '>>')

-- Jump between panes
keymap.set('', '<leader><up>', '<C-w><up>')
keymap.set('', '<leader><down>', '<C-w><down>')
keymap.set('', '<leader><left>', '<C-w><left>')
keymap.set('', '<leader><right>', '<C-w><right>')

-- Quick moves
keymap.set('', '<S-j>', '5j')
keymap.set('', '<S-k>', '5k')
keymap.set('', '<S-h>', 'b')
keymap.set('', '<S-l>', 'w')

-- Shrink view
keymap.set('', '+', ':vertical resize +5<CR>')
keymap.set('', '_', ':vertical resize -5<CR>')

-- Split view
keymap.set('', '<leader>hs', ':split<CR>')
keymap.set('', '<leader>vs', ':vsplit<CR>')

-- File explorer shortcuts
keymap.set('', '<leader>\\', ':NvimTreeToggle<CR>')

-- Tabpane shortcuts
keymap.set('', '<leader>tn', ':tabnew<CR>')

-- keymap.set('n', '<leader>1', '1gt')
keymap.set('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
keymap.set('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
keymap.set('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
keymap.set('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
keymap.set('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
keymap.set('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
keymap.set('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
keymap.set('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
keymap.set('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
keymap.set('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)

-- Disable copy when delete
keymap.set('v', 'd', '"_d')
keymap.set('n', 'xx', 'dd')
keymap.set('n', 'dd', '"_dd')
keymap.set('n', 'fw', 'dw')
keymap.set('n', 'dw', '"_dw')

local builtin = require('telescope.builtin')
keymap.set('', '<leader>ff', builtin.find_files, {})
keymap.set('', '<leader>gf', builtin.git_files, {})
keymap.set('', '<leader>rg', ':Telescope grep_string search="" only_sort_text=true<CR>', {})

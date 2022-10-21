vim.cmd('filetype plugin on')
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

local keymap = vim.keymap

vim.g.mapleader = ' '

keymap.set('', '<leader>ok', ':noh<CR>')

keymap.set('', '<C-/>', vim.lsp.buf.hover, {})

-- Quit current buffer
keymap.set('', '<leader>q', '<C-w>q<CR>', {})

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

keymap.set('n', '<leader>1', '1gt')
keymap.set('n', '<leader>2', '2gt')
keymap.set('n', '<leader>3', '3gt')
keymap.set('n', '<leader>4', '4gt')
keymap.set('n', '<leader>5', '5gt')
keymap.set('n', '<leader>6', '6gt')
keymap.set('n', '<leader>7', '7gt')
keymap.set('n', '<leader>8', '8gt')
keymap.set('n', '<leader>9', '9gt')
keymap.set('n', '<leader>0', ':tablast<CR>')

-- Disable copy when delete
keymap.set('v', 'd', '"_d')
keymap.set('n', 'xx', 'dd')
keymap.set('n', 'dd', '"_dd')
keymap.set('n', 'fw', 'dw')
keymap.set('n', 'dw', '"_dw')

local builtin = require('telescope.builtin')
keymap.set('', '<leader>ff', builtin.find_files, {})
keymap.set('', '<leader>gf', builtin.git_files, {})
keymap.set('', '<leader>rg', builtin.grep_string, {})

local map = vim.keymap
local opts = { silent = true, noremap = true}

map.set('n', '<C-n>', ':Fern . -drawer -reveal=%<CR>', opts)
map.set('n', '<C-j>', '<Cmd>BufferPrevious<CR>', opts)
map.set('n', '<C-k>', '<Cmd>BufferNext<CR>', opts)
map.set('n', '<leader>e', '<Cmd>BufferClose<CR>', opts)
map.set('n', 'tt', ':ToggleTerm<CR>', { silent = true, noremap = true })
map.set('i', 'jj', '<ESC>')
map.set('t', 'jj', '<C-\\><C-n>', {noremap = true})

vim.g.mapleader = ' '
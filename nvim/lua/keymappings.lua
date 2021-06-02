local utils = require('utils')
utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape
utils.map('n', '<leader>wh', ':wincmd h<CR>') -- select windows to left
utils.map('n', '<leader>wl', ':wincmd l<CR>') -- select window to right
utils.map('n', '<leader>ww', ':wincmd w<CR>') -- select next window in rotation
utils.map('n', '<leader>fs', ':w!<CR>') -- save file
utils.map('n', '<leader>ff', ':FZF<CR>')  -- FZF file selection
utils.map('n', '<leader>fb', ':Buffers<CR>')  -- FZF buffer selection
utils.map('n', '<leader>b', ':NERDTreeToggle<CR>') -- toggle nerdtree

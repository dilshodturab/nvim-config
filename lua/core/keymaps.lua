-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behaviour in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', {silent = true })

local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set('n', 'C-s', '<cmd> w <CR>', opts)

-- save file without autoformatting
vim.keymap.set('n', '<leader>sn', '<cmd> w <CR>', opts)

-- quit file
vim.keymap.set('n', 'C-q', '<cmd> q <CR>', opts)

-- delete a single char without saving it into the register
vim.keymap.set('n', 'x','"_x', opts)

-- vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Resize tabs with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- 
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)

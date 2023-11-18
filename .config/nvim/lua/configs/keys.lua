--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

local builtin = require('telescope.builtin')

-- remap the key used to leave insert mode
map('i', 'jk', '<Esc>', {})


-- hotkeys for telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

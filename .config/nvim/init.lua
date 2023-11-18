--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('configs.vars')
require('configs.opts')
require('configs.lazy')

require('configs.keys')

-- rm ~/.local/share/nvim to remove plugins

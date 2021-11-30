--Load Packer
require('plugins')

--Load Plugin Config
require('plugins-config/lualine')
require('plugins-config/material')
require('plugins-config/nvim-colorizer')
require('plugins-config/nvim-tree')
vim.cmd('source ~/.config/nvim/lua/plugins-config/rnvimr.vim')
require('plugins-config/bufferline')
vim.cmd('source ~/.config/nvim/lua/plugins-config/vista.vim')
vim.cmd('source ~/.config/nvim/lua/plugins-config/indentline.vim')
vim.cmd('source ~/.config/nvim/lua/plugins-config/telescope.vim')
vim.cmd('source ~/.local/share/nvim/site/pack/packer/start/vim-startify/autoload/startify.vim ')
require('plugins-config/neoscroll')
require('plugins-config/gitsigns')
require('plugins-config/toggleterm')
require('plugins-config/nvim-treesitter')
require('plugins-config/comment')
vim.cmd('source ~/.config/nvim/lua/plugins-config/coc.vim')

--Load Vim Config
vim.cmd('source ~/.config/nvim/lua/keymap.vim')
vim.cmd('source ~/.config/nvim/lua/vim-settings.vim')

--Start Windows
vim.cmd('source ~/.config/nvim/lua/scripts.vim')

--Set Theme
vim.cmd('color material')

--Test Start Time
--vim.cmd('quit')

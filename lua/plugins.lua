return require('packer').startup({function(use)
    -- Plugin Manager
    use 'wbthomason/packer.nvim'
    -- Theme
    use 'marko-cerovac/material.nvim'
    -- Status Line
	use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    -- Show CSS Color
    use 'norcalli/nvim-colorizer.lua'
    --File Manager
    use {'kyazdani42/nvim-tree.lua',requires = 'kyazdani42/nvim-web-devicons'}
    use 'kevinhwang91/rnvimr'
    --Tag List
    use 'liuchengxu/vista.vim'
    use 'simrat39/symbols-outline.nvim'
    --Indention Line
    use 'Yggdroot/indentLine'
    --Start Page
    use 'mhinz/vim-startify'
    --Finder
    use 'liuchengxu/vim-clap'
    use 'nvim-telescope/telescope-symbols.nvim'
    use {'nvim-telescope/telescope.nvim',requires = { {'nvim-lua/plenary.nvim'} }}
    --Icons
    use 'ryanoasis/vim-devicons'
    --Auto Pairs
    use 'jiangmiao/auto-pairs'
    --Smooth Scrolling
    use 'karb94/neoscroll.nvim'
    --TreeSitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'p00f/nvim-ts-rainbow'
    --Git
    use {'lewis6991/gitsigns.nvim',requires = {'nvim-lua/plenary.nvim'},}
    --Undo Tree
    use 'mbbill/undotree'
    --Save Sudo File
    use 'lambdalisue/suda.vim'
    --Floating Terminal
    use 'akinsho/toggleterm.nvim'
    --Editing
    use 'tpope/vim-surround'
    --Multiple Cursor
    use 'mg979/vim-visual-multi'
    --Scroll Bar
    use 'zhouguannan/scrollbar.nvim'
    --Comment
    use {'numToStr/Comment.nvim',config = function()require('Comment').setup()end}
    --LSP
    use {'neoclide/coc.nvim', run = 'yarn install'}
    use {"folke/trouble.nvim",requires = "kyazdani42/nvim-web-devicons",config = function()require("trouble").setup {

            position = "bottom", -- position of the list can be: bottom, top, left, right
    height = 10, -- height of the trouble list when position is top or bottom
    width = 50, -- width of the list when position is left or right
    icons = true, -- use devicons for filenames
    mode = "lsp_workspace_diagnostics", -- "lsp_workspace_diagnostics", "lsp_document_diagnostics", "quickfix", "lsp_references", "loclist"
    fold_open = "", -- icon used for open folds
    fold_closed = "", -- icon used for closed folds
    group = true, -- group results by file
    padding = true, -- add an extra new line on top of the list
    action_keys = { -- key mappings for actions in the trouble list
        -- map to {} to remove a mapping, for example:
        -- close = {},
        close = "q", -- close the list
        cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
        refresh = "r", -- manually refresh
        jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
        open_split = { "<c-x>" }, -- open buffer in new split
        open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
        open_tab = { "<c-t>" }, -- open buffer in new tab
        jump_close = {"o"}, -- jump to the diagnostic and close the list
        toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
        toggle_preview = "P", -- toggle auto_preview
        hover = "K", -- opens a small popup with the full multiline message
        preview = "p", -- preview the diagnostic location
        close_folds = {"zM", "zm"}, -- close all folds
        open_folds = {"zR", "zr"}, -- open all folds
        toggle_fold = {"zA", "za"}, -- toggle fold of current file
        previous = "k", -- preview item
        next = "j" -- next item
    },
    indent_lines = true, -- add an indent guide below the fold icons
    auto_open = false, -- automatically open the list when you have diagnostics
    auto_close = false, -- automatically close the list when you have no diagnostics
    auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
    auto_fold = false, -- automatically fold a file trouble list at creation
    auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
    signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
    },
    use_lsp_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
    }end}
    if packer_bootstrap then
	require('packer').sync()
	end
    config = {
        display = {
            open_fn = require('packer.util').float,
        }
    }
    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end
        }
    }})


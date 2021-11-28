vim.cmd("set termguicolors")
vim.g.material_style = "deep ocean"
local colors = require('material/colors')
require('material').setup({

	contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
	borders = true, -- Enable borders between verticaly split windows

	popup_menu = "dark", -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )

	italics = {
		comments = true, -- Enable italic comments
		keywords = true, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = true, -- Enable italic strings
		variables = true -- Enable italic variables
	},
    custom_highlights = {
        NvimTreeIndentMarker = { fg = colors.selection },
        NvimTreeNormal = { bg = colors.contrast },
        NvimTreeFolderIcon = {}
        -- This is the default foreground color for the deep ocean variant and will be more visible
    },

	contrast_windows = { -- Specify which windows get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
        "NvimTree",-- Darker qf list background
        "vista",
    },

	text_contrast = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false -- Enable higher contrast text for darker style
	},

	disable = {
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	},

})

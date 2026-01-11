-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.plugins = "plugins"
M.base46 = {
	theme = "kanagawa",
	transparency = false,
	theme_toggle = { "kanagawa", "ayu_dark" },

	hl_override = {
		Comment = { italic = true, bold = true },
		["@comment"] = { italic = true, bold = true },
	},
}

M.lsp = {
	signature = true,
}

M.colorify = {
	enabled = true,
	mode = "virtual", -- fg, bg, virtual
	virt_text = "󱓻 ",
	highlight = { hex = true, lspvars = true },
}

M.mason = {
	pkgs = {
		"flake8",
		"stylua",
		"prettier",
		"gofumpt",
		"gopls",
		"black",
		"golangci-lint",
		"buf",
		"typescript-language-server",
	},
}

M.nvdash = { load_on_startup = true }

M.ui = {
	cmp = {
		icons_left = true,
		lspkind_text = true,
		style = "flat_dark",

		format_colors = {
			tailwind = true,
			icon = "󱓻",
		},
	},

	tabufline = {
		lazyload = true,
	},

	statusline = {
		theme = "minimal",
	},

	term = {
		float = {
			height = 0.2,
		},
	},
}

return M

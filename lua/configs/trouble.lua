local open_with_trouble = require("trouble.sources.telescope").open

local telescope = require("telescope")

telescope.setup({
	default = {
		mappings = {
			i = { ["<c-t>"] = open_with_trouble },
			n = { ["<c-t>"] = open_with_trouble },
		},
	},
})

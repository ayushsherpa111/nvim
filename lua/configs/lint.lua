local lint = require("lint")

lint.linters_by_ft = {
	python = { "flake8" },
	-- javascript = { "eslint" },
	-- typescript = { "eslint" },
	-- go = { "golangcilint" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	callback = function()
		lint.try_lint()
	end,
})

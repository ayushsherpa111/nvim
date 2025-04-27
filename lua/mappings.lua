require("nvchad.mappings")

local map = vim.keymap.set

-- map("i", "jk", "<ESC>")
map("n", "<c-s>", ":%s/\\v", { desc = "Find and replace" })
map("n", "<a-k>", ":m -2<cr>", { desc = "Move line up" })
map("n", "<a-j>", ":m +1<cr>", { desc = "Move line down" })
-- map("v", "<a-k>", function ()
--
-- end)

-- lsp shortcuts
map("n", "<leader>ld", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "List all Document symbols" })
map("n", "<leader>lD", "<cmd>Telescope lsp_definitions<cr>", { desc = "List all Document symbols" })
map("n", "<leader>lw", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { desc = "List all Workspace symbols" })
map("n", "<leader>lr", "<cmd>Telescope lsp_references<cr>", { desc = "List all references of symbol" })
map("i", "<C-s>", function()
	vim.lsp.buf.signature_help()
end, { desc = "Get Signature help" })

-- telescope helper
map("n", "<leader>tg", "<cmd>Telescope help_tags<cr>", { desc = "List all the help tags for nvim" })
map("n", "<leader>ut", "<cmd>lua require('undotree').toggle()<cr>", { desc = "Toggle Undo Tree" })
map("n", "<leader>th", function()
	require("nvchad.themes").open(require("configs.themepicker"))
end, { desc = "Theme Picker" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "Format using conform" })

-- Nvim Tree
map("n", "<leader>et", "<cmd>NvimTreeFocus", { desc = "NvimTree Focus" })

require("nvchad.options")
local HOME = os.getenv("HOME")

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.expandtab = true
o.inccommand = "split"
o.ignorecase = true
o.undofile = true
o.undodir = HOME .. "/.cache/nvim/undo"
o.backupdir = HOME .. "/.cache/nvim/backups"
o.wrap = false

vim.g.undotree_UndoDir = HOME .. "/.cache/nvim/undo"
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	desc = "Return cursor to last location before exit",
	pattern = "*",
	command = 'silent! normal! g`"zv',
})

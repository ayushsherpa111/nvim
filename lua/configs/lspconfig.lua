local lspconfig = require("lspconfig")

local servers =
	{ "lua_ls", "html", "cssls", "gopls", "jedi_language_server", "clangd", "bicep", "buf_ls", "dockerls", "ts_ls" }
local nvlsp = require("nvchad.configs.lspconfig")

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	})
end

lspconfig.lua_ls.setup({
	on_init = nvlsp.on_init,
	on_attach = nvlsp.on_attach,
	capabilities = nvlsp.capabilities,

	settings = {
		Lua = {
			diagnostics = {
				enable = true,
			},
		},
	},
})

lspconfig.clangd.setup({
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
	diagnostics = false,
})

lspconfig.gopls.setup({
	on_attach = function(client, bufnr)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
		nvlsp.on_attach(client, bufnr)
	end,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gotmpl", "gowork" },
	root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			completeUnimported = true,
			usePlaceholders = true,
			staticcheck = true,
		},
	},
})

lspconfig.ts_ls.setup({
	cmd = { "/home/ssjsherpa/.bun/bin/typescript-language-server", "--stdio" },
	on_attach = nvlsp.on_attach,
	capabilities = nvlsp.capabilities,
	init_options = {
		preferences = {
			disableSuggestions = true,
		},
	},
})

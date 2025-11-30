return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable({
			"bashls",
			"clangd",
			"csharp_ls",
			"gopls",
			"lua_ls",
			"ruff",
			"ts_ls",
			"ty",
			"zls",
		})
		vim.diagnostic.config({ virtual_text = true })
	end,
}

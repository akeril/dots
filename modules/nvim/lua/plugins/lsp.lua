return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("LspKeys", { clear = true }),
				callback = function(event)
					local keymap = vim.keymap.set
					keymap("n", "K", vim.lsp.buf.hover)
					keymap("n", "gd", vim.lsp.buf.definition)
					keymap("n", "gr", require("telescope.builtin").lsp_references)
					keymap("n", "gs", require("telescope.builtin").lsp_document_symbols)
					keymap("n", "<leader>rn", vim.lsp.buf.rename)
					keymap("n", "<leader>ca", vim.lsp.buf.code_action)
				end,
			})
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local servers = {
				"bashls",
				"clangd",
				"csharp_ls",
				"gopls",
				"jdtls",
				"lua_ls",
				"pyright",
				"templ",
				"tsserver",
				"zls",
			}
			for _, server in pairs(servers) do
				lspconfig[server].setup({ capabilities = capabilities })
			end
		end,
	},
}

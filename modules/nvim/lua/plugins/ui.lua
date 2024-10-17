return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "dragon",
			colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
		},
		init = function()
			vim.cmd([[colorscheme kanagawa]])
		end,
	},
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
			"stevearc/dressing.nvim",
		},
		init = function()
			vim.api.nvim_set_keymap("n", "<leader>cd", "<CMD>Noice dismiss<CR>", {})
			vim.api.nvim_set_keymap("n", "<leader>ch", "<CMD>Noice history<CR>", {})
		end,
		opts = {
			presets = {
				command_palette = true,
				lsp_doc_border = true,
				long_message_to_split = true,
			},
		},
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {},
	},
}

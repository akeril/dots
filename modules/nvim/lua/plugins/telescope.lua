return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "BufEnter",
	opts = {
		defaults = {
			layout_strategy = "horizontal",
			layout_config = {
				horizontal = { preview_width = 0.55 },
			},
		},
	},
	keys = {
		{ "<leader>ff", "<CMD>Telescope find_files<CR>" },
		{ "<leader>fd", "<CMD>Telescope diagnostics<CR>" },
		{ "<leader>fg", "<CMD>Telescope live_grep<CR>" },
		{ "<leader>fh", "<CMD>Telescope help_tags<CR>" },
	},
}

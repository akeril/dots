return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>o", "<CMD>Oil --float<CR>" },
	},
	opts = {
		skip_confirm_for_simple_edits = true,
		keymaps = {
			["q"] = "actions.close",
		},
	},
}

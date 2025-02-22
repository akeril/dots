return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	init = function()
		vim.keymap.set("n", "<leader>o", "<CMD>Oil --float<CR>", {})
	end,
	opts = {
		skip_confirm_for_simple_edits = true,
		keymaps = {
			["q"] = "actions.close",
		},
	},
}

return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	init = function()
		vim.api.nvim_set_keymap("n", "<leader>o", "<CMD>Oil<CR>", {})
	end,
	opts = {
		skip_confirm_for_simple_edits = true,
		keymaps = {
			["q"] = "actions.close",
			["<Esc><Esc>"] = "actions.close",
		},
	},
}

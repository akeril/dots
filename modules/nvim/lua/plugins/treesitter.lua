return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			autopairs = { enable = true },
			autotag = { enable = true },
			highlight = { enable = true },
			indent = { enable = true },
		})
		vim.filetype.add({ extension = { templ = "templ" } })
	end,
}

return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"echasnovski/mini.surround",
		event = "InsertEnter",
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		opts = {},
	},
	{ "tpope/vim-fugitive" },
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false,

		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {},
	},
}

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "folke/snacks.nvim",
    opts = {
      indent = {},
      input = {},
    },
  },
}

return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
		config = function() require("mason").setup() end,
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "tpope/vim-fugitive" },
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup {}
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function ()
			require('gitsigns').setup {}
		end,
	},
}

return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
		config = function() require("mason").setup() end,
	},
	{ "rose-pine/neovim", name = "rose-pine" },
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
}

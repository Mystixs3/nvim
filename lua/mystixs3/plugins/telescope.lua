return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function() 
			require('telescope').load_extension('fzf')
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim", -- Faster fuzzy finding using a native fuzzy finder
		build = "make"
	}
}

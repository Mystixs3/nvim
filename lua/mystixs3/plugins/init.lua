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
	{
		"akinsho/bufferline.nvim",
		event = 'ColorScheme',
		config = function()
			local highlights = require('rose-pine.plugins.bufferline')
			require('bufferline').setup{
				options = {
					highlights = highlights,
					diagnostics = "nvim_lsp",
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							text_align = "center",
							separator = true,
						}
					},
					hover = {
						enabled = true,
						delay = 0,
						reveal = {'close'}
					},
					diagnostics_indicator = function(count, level, diagnostics_dict, context)
						local icon = level:match("error") and " " or " "
						return " " .. icon .. count
					end
				}
			}
		end,
	},
}

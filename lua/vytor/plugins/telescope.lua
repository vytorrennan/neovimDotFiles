return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.4',
	dependencies = { 
		'nvim-lua/plenary.nvim' 
	},	
	keys = {
		{ '<leader>pf', function () require 'telescope.builtin'.find_files() end},
		{ '<leader>pfg', function () require 'telescope.builtin'.git_files() end}
	}
}

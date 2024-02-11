return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.4',
	dependencies = { 
		'nvim-lua/plenary.nvim' 
	},	
	keys = {
		{ '<leader>ff', function () require 'telescope.builtin'.find_files() end},
		{ '<leader>ffg', function () require 'telescope.builtin'.git_files() end}
	}
}

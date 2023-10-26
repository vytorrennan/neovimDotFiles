return{
	'nvim-treesitter/nvim-treesitter', 
	build = ':TSUpdate',
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "javascript", "html", "css", "java", "python", "dockerfile", "json"},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end
}

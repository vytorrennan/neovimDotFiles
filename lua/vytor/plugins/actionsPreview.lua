return {
	'aznhe21/actions-preview.nvim',
	config = function()
		require('actions-preview').setup()
	end,
    --vim.keymap.set({ "v", "n" }, "gf", function ()
    --    require("actions-preview").code_actions
    --end)
    vim.keymap.set({ "v", "n" }, "<leader>ac", function()
        require("actions-preview").code_actions()
    end),
}

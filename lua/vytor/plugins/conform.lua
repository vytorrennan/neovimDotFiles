return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "goimports", "gofmt" },
				javascript = { { "prettierd", "prettier" } },
				python = { "black" }
			},
		})
	end,
	vim.keymap.set("", "<leader>f", function()
		require("conform").format({ async = true, lsp_fallback = true })
	end),
}

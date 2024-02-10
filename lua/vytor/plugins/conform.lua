return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
                -- :help conform-formatters
				lua = { "stylua" },
				go = { "goimports", "gofmt" },
				javascript = { { "prettierd", "prettier" } },
				python = { "black" },
                java = { "clang-format" }
			},
		})
	end,
	vim.keymap.set("", "<leader>f", function()
		require("conform").format({ async = true, lsp_fallback = true })
	end),
}

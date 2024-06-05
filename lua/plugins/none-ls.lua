return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local autogroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black, -- For python
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.prettier,
			},
			on_attach = function(client, bufnr) -- Auto format on save for any formatter
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						group = autogroup,
						buffer = bufnr,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = autogroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})
	end,
}

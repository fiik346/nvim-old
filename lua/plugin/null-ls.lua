return {
	"jose-elias-alvarez/null-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.eslint,
				-- null_ls.builtins.completion.spell,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.rustfmt,
				null_ls.builtins.formatting.pg_format,
				-- null_ls.builtins.diagnostics.curlylint,
				null_ls.builtins.formatting.djhtml.with({
					extra_args = {"--tabwidth", 2}
				}),
				null_ls.builtins.diagnostics.djlint,
				-- null_ls.builtins.diagnostics.sqlfluff.with({
				-- 	extra_args = { "--dialect", "postgres" }, -- change to your dialect
				-- }),
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
								-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
								-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
								-- vim.lsp.buf.formatting_sync()
								vim.lsp.buf.format({async = false})
						end,
					})
				end
			end,
		})
	end
}

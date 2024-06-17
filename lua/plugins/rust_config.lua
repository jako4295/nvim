return {
	{
		"rust-lang/rust.vim",
		config = function()
			vim.g.rustfmt_autosave = 1
		end,
	},
	{
		"mrcjkb/rustaceanvim",
		ft = "rust", -- filetype rust
		dependencies = "neovim/nvim-lspconfig",
	},
}

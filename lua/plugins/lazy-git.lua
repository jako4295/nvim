return {
	{
		"oncomouse/lazygit.nvim",
		config = function()
			vim.keymap.set("n", "<leader>lg", "<Plug>(lazygit.nvim)", {})
		end,
	},
}

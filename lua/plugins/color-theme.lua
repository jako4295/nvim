return {
	{
		"jako4295/darcula-dark.nvim",
		lazy = false,
		name = "darcula-dark",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("darcula-dark")
		end,
	},
}

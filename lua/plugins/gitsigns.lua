return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},
		})

		vim.keymap.set("n", "<leader>h", "<cmd>Gitsigns next_hunk<CR>")
		vim.keymap.set("n", "<leader>H", "<cmd>Gitsigns prev_hunk<CR>")
		vim.keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>")
		vim.keymap.set("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>")
	end,
}

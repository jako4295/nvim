return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
        vim.keymap.set("n", "<leader>md", "<cmd>MarkdownPreview<CR>", { desc = "Start Markdown Preview" }),
    },
    {
        "MeanderingProgrammer/markdown.nvim",
        name = "render-markdown",                                                -- Only needed if you have another plugin named markdown.nvim
        dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        config = function()
            require("render-markdown").setup({})
        end,
    },
    --	{
    --		"OXY2DEV/markview.nvim",
    --		ft = "markdown",
    --
    --		dependencies = {
    --			"nvim-treesitter/nvim-treesitter",
    --			"nvim-tree/nvim-web-devicons",
    --		},
    --		config = function()
    --			require("markview").setup({
    --				options = {
    --					on_enable = {
    --						conceallevel = 3,
    --						concealcursor = "n",
    --					},
    --				},
    --			})
    --		end,
    --	},
    -- {
    --     "yaocccc/nvim-hl-mdcodeblock.lua",
    --     dependencies = { "nvim-treesitter" },
    --     config = function()
    --         require("hl-mdcodeblock").setup({
    --             hl_group = "MDCodeBlock", -- default highlight group
    --             events = {    -- refresh event
    --                 "FileChangedShellPost",
    --                 "Syntax",
    --                 "TextChanged",
    --                 "TextChangedI",
    --                 "InsertLeave",
    --                 "WinScrolled",
    --                 "BufEnter",
    --             },
    --             padding_right = 10,     -- always append 4 space at lineend
    --             timer_delay = 20,       -- refresh delay(ms)
    --             query_by_ft = {         -- special parser query by filetype
    --                 markdown = {        -- filetype
    --                     "markdown",     -- parser
    --                     "(fenced_code_block) @codeblock", -- query
    --                 },
    --                 rmd = {             -- filetype
    --                     "markdown",     -- parser
    --                     "(fenced_code_block) @codeblock", -- query
    --                 },
    --             },
    --             minumum_len = 200, -- minimum len to highlight (number | function)
    --         })
    --     end,
    -- },
}

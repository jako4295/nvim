-- return {
-- 	{
-- 		"jako4295/darcula-dark.nvim",
-- 		lazy = false,
-- 		name = "darcula-dark",
-- 		priority = 1000,
-- 		config = function()
-- 			vim.cmd.colorscheme("darcula-dark")
-- 		end,
-- 	},
-- }
return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    name = "kanagawa",
    priority = 1000,
    config = function()
        local main_orange = "#b97231"
        local self_purple = "#a15da1"
        local function_color = "#aea260"
        local class_color = "#b93178" -- "#6093ae"
        local color_red = "#b93134"

        require("kanagawa").setup({
            colors = {
                palette = {
                    fujiWhite = "#cccccc", -- Standard color gray
                    waveRed = main_orange, -- Import statements main_color
                    oniViolet2 = color_red, -- Function assignment red
                    peachRed = main_orange, -- raise/return main_color
                    oniViolet = main_orange, -- if/else statements main_color
                    sakuraPink = "#9dc3e5", -- "#9a9ada"(light purple), -- number color
                    -- All blue colors are converted to orange fading to grey (sorted by intensity)
                    springBlue = class_color, -- "#b6b2af",
                    crystalBlue = function_color,
                    waveAqua2 = self_purple,

                    --dragonBlue = "#c09e74",
                    --waveBlue2 = "#c59557",
                    --waveBlue1 = "#ca8c3a",
                    --winterBlue = "#c78952",
                },
            },
            theme = {
                -- change specific usages for a certain theme, or for all of them
                wave = {
                    ui = {
                        float = {
                            bg = "none",
                        },
                    },
                },
            },
        })

        vim.cmd.colorscheme("kanagawa-wave")
    end,
}

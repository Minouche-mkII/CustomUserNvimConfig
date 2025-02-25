return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato"
            })
        end
    },
    {
        "pauchiner/pastelnight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require('pastelnight').setup({
                hide_inactive_statusline = true,
                style = "highContrast"
            })
        end

    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }
}

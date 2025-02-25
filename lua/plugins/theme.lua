return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "frappe"
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

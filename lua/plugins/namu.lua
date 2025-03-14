return {
    {
        "bassamsdata/namu.nvim",
        config = function()
            require("namu").setup({
                -- Enable the modules you want
                namu_symbols = {
                    enable = true,
                    options = {}, -- here you can configure namu
                },
                -- Optional: Enable other modules if needed
                ui_select = { enable = false }, -- vim.ui.select() wrapper
                colorscheme = {
                    enable = false,
                    options = {
                        -- NOTE: if you activate persist, then please remove any vim.cmd("colorscheme ...") in your config, no needed anymore
                        persist = true,      -- very efficient mechanism to Remember selected colorscheme
                        write_shada = false, -- If you open multiple nvim instances, then probably you need to enable this
                    },
                },
            })
            vim.keymap.set("n", "<leader>fs", ":Namu symbols<cr>", {
                desc = "Jump to LSP symbol",
                silent = true,
            })
            vim.api.nvim_create_user_command('Theme', 'Namu colorscheme', {desc = "theme picker"})
            -- vim.keymap.set("n", "<leader>th", "", {
            --     desc = "Colorscheme Picker",
            --     silent = true,
            -- })
        end,
    }
}

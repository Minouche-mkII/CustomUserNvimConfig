return {
    {
        'goolord/alpha-nvim',
        dependencies = { "nvim-tree/nvim-web-devicons", },
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")
            local telescope = require("telescope.builtin")

            dashboard.section.buttons.val = {
                dashboard.button("e", "  New file", "<Cmd>ene <BAR> startinsert <CR>"),
                dashboard.button("f", "  Search file", telescope.find_files),
                dashboard.button("b", "󰙅  Browse directory", "<Cmd>Neotree toggle<CR>"),
                dashboard.button("q", "󰅚  Quit NVIM", "<Cmd>qa<CR>")
            }

            alpha.setup(dashboard.opts)
        end
    }
}

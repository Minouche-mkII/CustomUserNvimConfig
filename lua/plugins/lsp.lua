return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ts_ls"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            vim.keymap.set('n', '<leader>d', vim.lsp.buf.hover, { desc = "show documentation of hovered method" })
            vim.keymap.set('n', '<leader>g', vim.lsp.buf.definition, { desc = "go to definition" })
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "code action" })
        end
    }
}

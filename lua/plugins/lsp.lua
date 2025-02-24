do
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
                    ensure_installed = vim.g.lsp_list
                })
            end
        },
        {
            "neovim/nvim-lspconfig",
            dependencies = {
                "hrsh7th/cmp-nvim-lsp"
            },
            config = function()
                local lspconfig = require("lspconfig")
                local capabilities = require('cmp_nvim_lsp').default_capabilities()
                for _, lsp in pairs(vim.g.lsp_list) do
                    lspconfig[lsp].setup {
                        -- config auto complete for lsp
                        capabilities = capabilities
                    }
                end
                vim.keymap.set('n', '<leader>cd', vim.lsp.buf.hover, { desc = "show documentation of hovered method" })
                vim.keymap.set('n', '<leader>cg', vim.lsp.buf.definition, { desc = "go to definition" })
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "code action" })
            end
        }
    }
end



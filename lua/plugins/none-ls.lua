return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.prettier_d,
                null_ls.builtins.diagnostics.eslint_d,
            },
        })
        vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "format code" })
    end,
}

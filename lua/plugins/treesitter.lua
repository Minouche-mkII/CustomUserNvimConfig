return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
        require ("nvim-treesitter.install").compilers = { "zig", "gcc" };
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            ensure_installed = {
                "lua",
                "markdown",
                "markdown_inline",
            },
            highlight = { enabled = true },
            indent = { enabled = true }
        })
    end;
}

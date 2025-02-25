return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
        require ("nvim-treesitter.install").compilers = { "zig" };
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            ensure_installed = {
                "lua",
                "c_sharp",
                "java",
                "html",
                "css",
                "javascript",
                "markdown",
                "markdown_inline",
            },
            highlight = { enabled = true },
            indent = { enabled = true }
        })
    end;
}

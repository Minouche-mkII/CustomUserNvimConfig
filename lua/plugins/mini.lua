return {
    { 'echasnovski/mini.icons',   version = false },
    { 'echasnovski/mini.comment', version = false },
    {
        'echasnovski/mini.files',
        version = false,
        config = function()
            vim.keymap.set('n', '<leader>f,', '<cmd>lua MiniFiles.open()<CR>', { desc = "navigate files" })
            require('mini.files').setup()
        end
    }
}

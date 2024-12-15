return {
    "voldikss/vim-floaterm",
    lazy = false, 
    config = function()
        vim.g.floaterm_width = 0.8 -- Largeur (fraction de l'écran)
        vim.g.floaterm_height = 0.8 -- Hauteur (fraction de l'écran)

        vim.cmd("FloatermNew --name=terminal --silent")
        vim.keymap.set('n', '<leader>t', '<cmd>FloatermToggle<CR>')
    end
}

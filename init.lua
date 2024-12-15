require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")

vim.cmd.colorscheme "catppuccin"

vim.keymap.set('n', '<A-Up>', '<Cmd>resize +2<CR>', { desc = 'Augmente la hauteur de la fenêtre' })
vim.keymap.set('n', '<A-Down>', '<Cmd>resize -2<CR>', { desc = 'Réduit la hauteur de la fenêtre' })
vim.keymap.set('n', '<A-Left>', '<Cmd>vertical resize -2<CR>', { desc = 'Réduit la largeur de la fenêtre' })
vim.keymap.set('n', '<A-Right>', '<Cmd>vertical resize +2<CR>', { desc = 'Augmente la largeur de la fenêtre' })

vim.keymap.set('n', '<A-h>', '<C-w>h', { desc = 'go to left window' })
vim.keymap.set('n', '<A-j>', '<C-w>j', { desc = 'go to down window' })
vim.keymap.set('n', '<A-k>', '<C-w>k', { desc = 'go to up window' })
vim.keymap.set('n', '<A-l>', '<C-w>l', { desc = 'go to right window' })


vim.keymap.set('v', '<C-c>', '"+y', { desc = 'Copier dans le presse-papier système' })
vim.keymap.set('n', '<C-v>', '"+p', { desc = 'Coller depuis le presse-papier système' })
vim.keymap.set('v', '<C-x>', '"+d', { desc = 'Couper dans le presse-papier système' })

vim.keymap.set('n', '<leader>r', function()
    if vim.wo.relativenumber then
        vim.wo.relativenumber = false
        vim.wo.number = true -- Garder les numéros absolus
    else
        vim.wo.relativenumber = true
    end
end, { desc = "Toggle relative line numbers" })


vim.keymap.set('i', '(', '()<Left>', { desc = "Insert () and move inside" })
vim.keymap.set('i', '{', '{}<Left>', { desc = "Insert {} and move inside" })
vim.keymap.set('i', '[', '[]<Left>', { desc = "Insert [] and move inside" })
vim.keymap.set('i', '"', '""<Left>', { desc = "Insert \"\" and move inside" })
vim.keymap.set('i', "'", "''<Left>", { desc = "Insert '' and move inside" })


vim.keymap.set('n', '<leader>dd', '<cmd>NoiceDismiss<CR>', { desc = "dismiss notification" })

vim.keymap.set('t', '<esc>', '<C-\\><C-n><cmd>FloatermHide<CR>')


vim.keymap.set('n', '<A-CR>', ':echo "Ctrl+Enter pressed!"<CR>', { desc = "Example: Ctrl+Enter mapping" })

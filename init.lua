require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd.colorscheme "catppuccin"

vim.keymap.set('n', '<A-Up>', '<Cmd>resize +2<CR>', { desc = 'Augmente la hauteur de la fenêtre' })
vim.keymap.set('n', '<A-Down>', '<Cmd>resize -2<CR>', { desc = 'Réduit la hauteur de la fenêtre' })
vim.keymap.set('n', '<A-Left>', '<Cmd>vertical resize -2<CR>', { desc = 'Réduit la largeur de la fenêtre' })
vim.keymap.set('n', '<A-Right>', '<Cmd>vertical resize +2<CR>', { desc = 'Augmente la largeur de la fenêtre' })

vim.keymap.set('n', '<C-c>', '"+y', { desc = 'Copier dans le presse-papier système' })
vim.keymap.set('n', '<C-v>', '"+p', { desc = 'Coller depuis le presse-papier système' })
vim.keymap.set('n', '<C-x>', '"+d', { desc = 'Couper dans le presse-papier système' })

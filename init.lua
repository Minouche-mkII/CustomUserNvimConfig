vim.g.lsp_list = {
    "lua_ls",
    "ts_ls"
}

require("config.lazy")
require("config.terminalmanager")

vim.cmd.colorscheme "catppuccin"

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")


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

vim.keymap.set('n', '<leader>nn', '<cmd>NoiceDismiss<CR>', { desc = "dismiss notification" })

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '󰌵'
        },
    },
})

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })


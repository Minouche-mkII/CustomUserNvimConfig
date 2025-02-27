TermKeybinds = {
    toggle_term = "<leader>t"
}

-- mode normal lorsque echap pressé
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

function Create_floating_window(buff)
    local opts = {
        relative = 'editor',
        width = 50,
        height = 10,
        col = 10,
        row = 5,
        style = 'minimal',
        border = 'single',
    }

    Floating_terminal = vim.api.nvim_open_win(buff, true, opts)
end

function Close_floating_window()
    vim.api.nvim_win_close(Floating_terminal, true)
    Floating_terminal = nil
end

function Toggle_floating_term_window()
    if Floating_terminal == nil then
        if CurrentTermbuffer ~= nil and vim.api.nvim_buf_is_valid(CurrentTermbuffer) then
            Floating_terminal = Create_floating_window(CurrentTermbuffer)
        else
            local default_buff = vim.api.nvim_create_buf(false, true)
            Floating_terminal = Create_floating_window(default_buff)
            ReatributeBuffer(Floating_terminal)
        end
    else
        Floating_terminal = Close_floating_window()
    end
end

function ReatributeBuffer(window)
    if TermsList[0] ~= nil then
        CurrentTermbuffer = TermsList[0]
        vim.api.nvim_win_set_buff(window, CurrentTermbuffer)
    else -- if no terminal exist, create a new one here
        New_term_here(window)
    end
end

function New_term_here(window)
    local new_buff = vim.api.nvim_create_buf(false, true)
    TermsList[#TermsList](new_buff)
    vim.api.nvim_win_set_buff(window, new_buff)
    vim.api.nvim_set_current_win(window)
    vim.fn.termopen("cmd")
end

Floating_terminal = nil

TermsList = {}
CurrentTermbuffer = nil

vim.keymap.set('n', '<leader>t', Toggle_floating_term_window)

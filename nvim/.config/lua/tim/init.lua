-- Include external module for settings
require("tim.set")

-- Include external module for key mappings
require("tim.remap")

-- Create an autogroup using the Neovim API
local augroup = vim.api.nvim_create_augroup
local timGroup = augroup('tim', {})

-- Create an autocmd function using the Neovim API
local autocmd = vim.api.nvim_create_autocmd

-- Create an autogroup for highlighting yanked text
local yank_group = augroup('HighlightYank', {})

-- Define a function to reload a module
function R(name)
    require("plenary.reload").reload_module(name)
end

-- Define an autocmd for highlighting yanked text
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

-- Define an autocmd for removing trailing whitespaces before writing a buffer
autocmd({"BufWritePre"}, {
    group = timGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- Set global variables related to netrw (file explorer)
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Configure python3
vim.g.python3_host_prog = '/usr/bin/python3'


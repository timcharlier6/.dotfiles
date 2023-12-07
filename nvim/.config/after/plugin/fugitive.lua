-- Set a key mapping in normal mode (n) for <leader>gs to execute the Git command
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Create an autocommand group named "ThePrimeagen_Fugitive"
local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})

-- Create an autocmd (autocommand) for the "BufWinEnter" event
-- This event is triggered when entering a buffer or opening a new window
local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = ThePrimeagen_Fugitive, -- Assign the autocmd to the created group
    pattern = "*", -- Apply the autocmd to all file types
    callback = function()
        -- Check if the current buffer's file type is not "fugitive"
        if vim.bo.ft ~= "fugitive" then
            return
        end

        -- Get the current buffer number
        local bufnr = vim.api.nvim_get_current_buf()
        -- Set options for key mappings, specifically for the current buffer
        local opts = {buffer = bufnr, remap = false}

        -- Set a key mapping for <leader>p to execute the Git command 'push'
        vim.keymap.set("n", "<leader>p", function()
            vim.cmd.Git('push')
        end, opts)

        -- Set a key mapping for <leader>P to execute the Git command 'pull --rebase'
        vim.keymap.set("n", "<leader>P", function()
            vim.cmd.Git({'pull',  '--rebase'})
        end, opts)

        -- Set a key mapping for <leader>t to execute the Git command 'push -u origin '
        -- This allows easy setting of the branch to push and any needed tracking
        vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
    end,
})


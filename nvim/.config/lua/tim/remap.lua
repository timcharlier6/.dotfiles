-- Set the leader key to a space
vim.g.mapleader = " "

-- Define a normal mode mapping for <leader>pv to execute the StartVimWithMe function
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Define a normal mode mapping for <leader>; to insert a ; at the end
vim.keymap.set("n", "<leader>;", "A;<Esc>")

-- Visual mode mappings to move selected lines down (J) or up (K)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Normal mode mappings for moving lines down (J), up (K), and page down/up (Ctrl-d, Ctrl-u)
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Define a normal mode mapping to start Vim collaboration with a plugin
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)

-- Define a normal mode mapping to stop Vim collaboration with a plugin
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Remap x to delete and paste in visual mode
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard in normal (Y) and visual mode (y)
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete in normal (d) and visual mode (d) without yanking
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- In insert mode, map Ctrl-c to escape
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Define a normal mode mapping for Q to do nothing
vim.keymap.set("n", "Q", "<nop>")

-- Define a normal mode mapping for Ctrl-f to open a new tmux window with tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Define a normal mode mapping for <leader>f to format the current buffer using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Remaps for navigating quickfix and location lists
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace mappings using the leader key
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Define a normal mode mapping for <leader>x to make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Open specific files or execute commands using the leader key
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/tim/packer.lua")
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain")

-- Define a normal mode mapping for <leader><leader> to source the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
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

-- Remap x to delete and paste in visual mode
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard in normal (Y) and visual mode (y)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete in normal (d) and visual mode (d) without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

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

-- Function to toggle GitHub Copilot
function ToggleCopilot()
  if vim.g.copilot_enabled then
    vim.cmd("Copilot disable")
    vim.g.copilot_enabled = false
    print("Copilot disabled")
  else
    vim.cmd("Copilot enable")
    vim.g.copilot_enabled = true
    print("Copilot enabled")
  end
end

-- Set initial state
vim.g.copilot_enabled = true

-- Key mapping to toggle Copilot
vim.api.nvim_set_keymap("n", "<leader>cp", ":lua ToggleCopilot()<CR>", { noremap = true, silent = true })

-- Navigate buffers with Ctrl-n and Ctrl-p
vim.api.nvim_set_keymap("n", "<C-n>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-p>", ":bprevious<CR>", { noremap = true, silent = true })

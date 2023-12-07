-- Disable the GUI cursor
vim.opt.guicursor = ""

-- Enable line numbers
vim.opt.nu = true

-- Enable relative line numbers
vim.opt.relativenumber = true

-- Set tab width to 4 spaces
vim.opt.tabstop = 4

-- Set the number of spaces for a tab in insert mode to 4
vim.opt.softtabstop = 4

-- Set the number of spaces for autoindent in insert mode to 4
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Enable smart indenting
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Disable swap file creation
vim.opt.swapfile = false

-- Disable backup file creation
vim.opt.backup = false

-- Set the directory for undo files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Enable persistent undo
vim.opt.undofile = true

-- Disable search highlighting
vim.opt.hlsearch = false

-- Enable incremental search
vim.opt.incsearch = true

-- Enable true color in the terminal
vim.opt.termguicolors = true

-- Set the minimum number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 8

-- Always show the sign column
vim.opt.signcolumn = "yes"

-- Specify additional characters considered part of a word (for isfname)
vim.opt.isfname:append("@-@")

-- Set the time to wait for more keystrokes in milliseconds
vim.opt.updatetime = 50

-- Highlight column at character position 80
vim.opt.colorcolumn = "80"


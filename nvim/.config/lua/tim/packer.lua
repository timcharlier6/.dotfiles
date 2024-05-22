-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope for fuzzy finding
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Rose Pine color scheme
  use({
    "craftzdog/solarized-osaka.nvim",
    as = 'solarized-osaka',
    config = function()
      vim.cmd[[colorscheme solarized-osaka]]
    end
  })

  -- Trouble plugin for managing errors, warnings, etc.
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })

  -- Treesitter for better syntax highlighting
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use("nvim-treesitter/playground")
  use("nvim-treesitter/nvim-treesitter-context")

  -- Harpoon for quick access to project files
  use("theprimeagen/harpoon")

  -- Refactoring support
  use("theprimeagen/refactoring.nvim")

  -- Undotree for visualizing undo history
  use("mbbill/undotree")

  -- Fugitive for Git integration
  use("tpope/vim-fugitive")

  -- LSP (Language Server Protocol) setup
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- Zen mode for distraction-free writing
  use("folke/zen-mode.nvim")

  -- Copilot.vim for GitHub Copilot integration
    use {
    'github/copilot.vim',
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end
  }



  -- Cellular automaton for fun
  use("eandrju/cellular-automaton.nvim")

  -- Cloak for hiding unimportant text in code
  use("laytan/cloak.nvim")

  -- Turbio bracey to run html live browser
  use{'turbio/bracey.vim', run = 'npm install --prefix server'}

  --Python client
  use('neovim/python-client')

  --Double bracket automatic
  use 'm4xshen/autoclose.nvim'

end)


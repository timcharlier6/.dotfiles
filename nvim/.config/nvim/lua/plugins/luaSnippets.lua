return {
  {
    "L3MON4D3/LuaSnip",
    "mlaursen/vim-react-snippets",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = function()
      -- Your key mappings here

      -- Example: Expand snippet
      vim.api.nvim_set_keymap(
        "i",
        "<C-k>",
        "<cmd>lua require'luasnip'.expand_or_jump()<CR>",
        { noremap = true, silent = true }
      )
      -- Example: Jump forward in a snippet
      vim.api.nvim_set_keymap("i", "<C-l>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
      -- Example: Jump backward in a snippet
      vim.api.nvim_set_keymap("i", "<C-j>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })
      -- Example: Change choice
      vim.api.nvim_set_keymap(
        "i",
        "<C-u>",
        "<cmd>lua require'luasnip'.change_choice(1)<CR>",
        { noremap = true, silent = true }
      )
    end,
  },
}

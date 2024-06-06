return {
  -- add zenbones
  { "mcchrish/zenbones.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "zenbones",
    },
    requires = "rktjmp/lush.nvim",
  },
}

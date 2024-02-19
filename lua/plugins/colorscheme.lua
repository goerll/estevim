return {
  { "navarasu/onedark.nvim" },
  { "edeneast/nightfox.nvim" },
  { "shaunsingh/nord.nvim" },
  { "xiyaowong/transparent.nvim" },
  { "alexvzyl/nordic.nvim" },
  {"catppuccin/nvim"},
  { "rose-pine/neovim", name = "rose-pine" },
  {'olivercederborg/poimandres.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('poimandres').setup {}
  end,
  },
  {"cocopon/iceberg.vim"},
}

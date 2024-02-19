-- bootstrap lazy.nvim, LazyVim and plugins
require("config.lazy")

-- colorschemes setup
require("nightfox").setup({
  style = "carbonfox",
})
require("onedark").setup({
  style = "darker",
})
require("catppuccin").setup({
  style = "mocha",
})
require("catppuccin").load()

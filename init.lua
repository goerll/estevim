-- bootstrap lazy.nvim, LazyVim and plugins
require("config.lazy")

vim.o.guifont = "Maple Mono NF:h14"

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
require("tokyonight").load()

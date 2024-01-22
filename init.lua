-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("nightfox").setup({
  style = "carbonfox",
})

require("onedark").setup({
  style = "deep",
})

require("onenord").load()

require("lint").linters_by_ft = {
  python = { "flake8" },
}

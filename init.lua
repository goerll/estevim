-- bootstrap lazy.nvim, LazyVim and plugins
require("config.lazy")

if vim.g.neovide then
  -- vim.o.guifont = "Maple Mono NF"
  vim.o.guifont = "GeistMono Nerd Font Mono"
  vim.g.neovide_transparency = 0.9
end
require("scrollbar").setup()

vim.cmd("colorscheme material-deep-ocean")

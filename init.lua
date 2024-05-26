-- bootstrap lazy.nvim, LazyVim and plugins
require("config.lazy")

if vim.g.neovide then
  vim.o.guifont = "Liga SFMono Nerd Font:h14"
end

require("scrollbar").setup()

vim.cmd("colorscheme neofusion")
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

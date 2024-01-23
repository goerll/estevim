-- bootstrap lazy.nvim, LazyVim and plugins
require("config.lazy")

-- selection of which Ale linters will be loaded
vim.api.nvim_exec([[
  let g:ale_linters = {
    \ 'javascript': ['standard'],
    \ 'python': ['flake8'],
    \ 'c': ['gcc'],
    \ 'cpp': ['gcc'],
    \ 'html': ['prettier'],
    \ 'lua': ['luacheck'],
    \ 'rb': ['rubocop'],
    \ 'rs': ['rust-analyzer'],
    \ 'css': ['prettier'],
    \ 'java': ['google-java-format'],
    \ }
]], false)

-- colorschemes setup
require("nightfox").setup({
  style = "carbonfox",
})
require("onedark").setup({
  style = "deep",
})
require("onenord").load()

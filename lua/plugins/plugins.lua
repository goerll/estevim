return {

  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },

  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup()
    end,
  },
  {"Domeee/mosel.nvim"},
  {"kaarmu/typst.vim"},
  { "petertriho/nvim-scrollbar" },

  { "ray-x/web-tools.nvim" },

  {"akinsho/git-conflict.nvim"},

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  { "dapt4/vim-autoSurround" },
}

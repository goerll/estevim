return {
    {
        "williamboman/mason.nvim",
        config = function()
        require("mason").setup()
        end
    },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "jdtls", "quick_lint_js", "rust_analyzer", "csharp_ls" },
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cssls.setup({})
      lspconfig.html.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.quick_lint_js.setup({})
      lspconfig.pyright.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.csharp_ls.setup({})
    end
  },
}

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
        ensure_installed = { "lua_ls", "clangd", "jdtls", "quick_lint_js", "rust_analyzer", "jdtls" }
      })
    end
  },

  -- {
  --   'nvim-java/nvim-java',
  --   dependencies = {
  --     'nvim-java/lua-async-await',
  --     'nvim-java/nvim-java-refactor',
  --     'nvim-java/nvim-java-core',
  --     'nvim-java/nvim-java-test',
  --     'nvim-java/nvim-java-dap',
  --     'MunifTanjim/nui.nvim',
  --     'neovim/nvim-lspconfig',
  --     'mfussenegger/nvim-dap',
  --     {
  --       'williamboman/mason.nvim',
  --       opts = {
  --         registries = {
  --           'github:nvim-java/mason-registry',
  --           'github:mason-org/mason-registry',
  --         },
  --       },
  --     }
  --   },
  -- },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})
      -- lspconfig.clangd.setup({})
      lspconfig.cssls.setup({})
      lspconfig.html.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.quick_lint_js.setup({})
      lspconfig.pyright.setup({})
      lspconfig.rust_analyzer.setup({})
    end
  },

  {"mfussenegger/nvim-jdtls"},

   {
    'dense-analysis/ale',
    config = function()
      -- ALE configuration
      vim.g.ale_linters = {
        cpp = {'gcc'},
      }
      vim.g.ale_lint_on_save = 1
      vim.g.ale_lint_on_text_changed = 'always'
      vim.g.ale_cpp_gcc_executable = 'g++'
      vim.g.ale_cpp_gcc_options = '-Wall -Wextra -std=c++17'
    end
  },

}

return {
    "OmniSharp/omnisharp-vim",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        -- Set the path to the OmniSharp server (adjust this path as necessary)
        -- vim.g.OmniSharp_server_path = '/path/to/omnisharp/OmniSharp.exe'

        -- Use the default settings, or configure as needed
        -- vim.g.OmniSharp_highlight_types = 2
        -- vim.g.OmniSharp_popup_position = 'peek'

        -- Add key bindings for OmniSharp commands
        -- vim.api.nvim_set_keymap('n', 'gd', ':OmniSharpGotoDefinition<CR>', { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap('n', '<leader>f', ':OmniSharpFindUsages<CR>', { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap('n', '<leader>r', ':OmniSharpRename<CR>', { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap('n', '<leader>o', ':OmniSharpGetCodeActions<CR>', { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap('n', '<leader>i', ':OmniSharpFindImplementations<CR>', { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap('n', '<leader>s', ':OmniSharpSignatureHelp<CR>', { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap('n', '<leader>d', ':OmniSharpGetMetadata<CR>', { noremap = true, silent = true })

        -- Enable autocompletion using vim's built-in omnifunc
        vim.api.nvim_exec([[
          autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
        ]], false)
    end
}

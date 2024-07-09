return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        {
            '<Space>e',
            function()
                require('neo-tree.command').execute({
                    toggle = true,
                    source = 'filesystem',
                    position = 'left',
                    dir = vim.fn.expand('%:p:h'), -- Current file directory
                })
            end,
            desc = 'Filesystem (current file dir)',
        },
        {
            '<Space>E',
            function()
                require('neo-tree.command').execute({
                    toggle = true,
                    source = 'filesystem',
                    position = 'left',
                    dir = vim.fn.expand('$HOME'),
                })
            end,
            desc = 'Filesystem (root dir)',
        },
    },
}

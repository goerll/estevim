return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>fF", "<cmd>Telescope find_files<cr>", desc = "Find files" },
        { "<leader>ff", "<cmd>Telescope find_files cwd=%:p:h<cr>", desc = "Find files (cwd)" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
    }
}

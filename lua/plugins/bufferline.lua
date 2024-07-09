return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup{
        options = {
            offsets = {{filetype = "neo-tree", text = "File Explorer", text_align = "center"}},
        }
        }
    end
}

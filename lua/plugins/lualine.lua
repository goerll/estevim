return {
    "nvim-lualine/lualine.nvim",
    config = function()
    require("lualine").setup({
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = { 'dashboard', 'NvimTree', 'Outline', 'neo-tree' },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
        }
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {},
        lualine_c = {
                        { "branch", icon = "" },
                        {
                        "diagnostics",
                        symbols = {
                            error = " ",
                            warn = " ",
                            info = " ",
                            hint = "󰝶 ",
                        },
                    },
                    { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
                    { "filename", padding = { left = 0, right = 0 } },
        },

        lualine_x = {
            'progress',
            'location',
        },
        lualine_y = {
        },
        lualine_z = {
            {
                "datetime",
                style = " %R",
            },
        },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
    })
end
}

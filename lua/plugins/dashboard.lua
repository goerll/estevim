-- local logo = [[
--         ▄▄▄▄▄                  
--         █ ▄▄▄▀█▄     ▄▄▀▀▀▀█   
--         █▐▓▓░█▄▀█▄▄▄█▀▄▓▓▓▌█   
--       ▄█▚▀▄▓▓▄▄▄▄▀▀▀▄▓▓▓▓▓▌█   
--     ▄█▀▄▓█▓▓▓▓▓▓▓▓▓▓▓▓▀░▓▌█▌   
--   ▄█▀▄▓▓▓███▓▓▓███▓▓▓▄░░▄▓▐█▌  
--   █▌▓▓▓▀▀▓▓▓▓███▓▓▓▓▓▓▓▄▀▓▓▐█  
--  ▐█▐██▐░▄▓▓▓▓▓▀▄░▀▓▓▓▓▓▓▓▓▓▌█▌ 
--  █▌███▓▓▓▓▓▓▓▓▐░░▄▓▓███▓▓▓▄▀▐█ 
--  █▐█▓▀░░▀▓▓▓▓▓▓▓▓▓██████▓▓▓▓▐█ 
-- ▐▌▓▄▌▀░▀░▐▀█▄▓▓██████████▓▓▓▌█▌
-- ▐▌▓▓▓▄▄▀▀▓▓▓▀▓▓▓▓▓▓▓▓█▓█▓█▓▓▌█▌
--  █▐▓▓▓▓▓▓▄▄▄▓▓▓▓▓▓█▓█▓█▓█▓▓▓▐█ 
--  ▝▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  
--  ]]

local logo = [[
  /\_/\  
 ( •-• ) 
 / >🎸<\ 
 @goerll 
]]

return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",

    opts = function()


        local logo_lines = vim.split(logo, "\n")
        local logo_height = #logo_lines

        local padding = math.floor((vim.api.nvim_win_get_height(0) - 12 - logo_height) / 2)
        logo = string.rep("\n", padding) .. logo
        local opts = {
        theme = "doom",

        hide = {
            statusline = false,
        },

        config = {
            header = vim.split(logo, "\n"),
            -- stylua: ignore
            --
            center = {
            { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
            { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
            { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
            { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
            { action = "lua require('telescope.builtin').find_files({cwd = vim.fn.stdpath('config')})", desc = " Config",          icon = " ", key = "c" },
            { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
            { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
            },

            footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ " .. stats.loaded .. "/" .. stats.count .. " - " .. ms .. "ms" }
            end,
        },
        }

        for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
        end

        -- close Lazy and re-open when the dashboard is ready
        if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
            pattern = "DashboardLoaded",
            callback = function()
            require("lazy").show()
            end,
        })
        end

        return opts
    end,
}

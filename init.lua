--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key

local config = {

        -- If you need more control, you can use the function()...end notation
        options = function(local_vim)

                -- GitHub Copilot
                local_vim.g.copilot_no_tab = " "

                return local_vim
        end,

        plugins = {
                init = {
                        { "github/copilot.vim" },
                }
        },

        lsp = {

                -- override the mason server-registration function
                server_registration = function(server, opts)
                        require("lspconfig")[server].setup(opts)
                end,

                -- Add overrides for LSP server settings, the keys are the name of the server
                ["server-settings"] = {
                        pyright = {
                                settings = {
                                        python = {
                                                analysis = {
                                                        typeCheckingMode = "off"
                                                }
                                        }
                                }
                        }
                },
        },

        header = {
                " █████╗ ███████╗████████╗██████╗  ██████╗ ",
                "██╔══██╗██╔════╝╚══██╔══╝██╔══██╗██╔═══██╗",
                "███████║███████╗   ██║   ██████╔╝██║   ██║",
                "██╔══██║╚════██║   ██║   ██╔══██╗██║   ██║",
                "██║  ██║███████║   ██║   ██║  ██║╚██████╔╝",
                "╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ",
                "                                          ",
                "    ███╗   ██╗██╗   ██╗██╗███╗   ███╗     ",
                "    ████╗  ██║██║   ██║██║████╗ ████║     ",
                "    ██╔██╗ ██║██║   ██║██║██╔████╔██║     ",
                "    ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║     ",
                "    ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║     ",
                "    ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝     ",
        },

}

return config

return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#070506",
                bg_dark = "#070506",
                bg_highlight = "#836f79",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#d9b6fd",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#836f79",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#b37580",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#d5aeb5",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#e095b5",
                -- green: Comments, strings, success states, git additions
                green = "#648ed0",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#7c93dd",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#979fec",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#cd9dcf",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#eddaee",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}

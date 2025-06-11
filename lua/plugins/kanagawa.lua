return {
    "rebelot/kanagawa.nvim",
    branch = "master",
    priority = 1000,
    config = function()
        require("kanagawa").setup({
            transparent = true,
            overrides = function(colors)
                return {
                    ["@markup.link.url.markdown_inline"] = { link = "Special" }, -- (url)
                    ["@markup.link.label.markdown_inline"] = { link = "WarningMsg" }, -- [label]
                    ["@markup.italic.markdown_inline"] = { link = "Exception" }, -- *italic*
                    ["@markup.raw.markdown_inline"] = { link = "String" }, -- `code`
                    ["@markup.list.markdown"] = { link = "Function" }, -- + list
                    ["@markup.quote.markdown"] = { link = "Error" }, -- > blockcode
                    ["@markup.list.checked.markdown"] = { link = "WarningMsg" }, -- - [X] checked list item
                }
            end,
        })
        --vim.cmd("colorscheme kanagawa")
        vim.defer_fn(function()
            vim.cmd("colorscheme kanagawa")
        end, 50)
    end,
}

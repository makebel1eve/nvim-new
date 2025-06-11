return {
    "L3MON4D3/LuaSnip",
    lazy = true,
    event = "InsertEnter",
    dependencies = { "rafamadriz/friendly-snippets" },
    build = "make install_jsregexp", -- optional for regex support
    config = function()
        require("luasnip.loaders.from_lua").lazy_load({
            paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
        })
    end,
}

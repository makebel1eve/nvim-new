return {
    formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "clang-format" },
        rust = { "rustfmt" },
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
}

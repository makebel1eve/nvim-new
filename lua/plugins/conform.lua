return {
    "stevearc/conform.nvim",
    lazy = true,
    event = "BufWritePre",
    opts = function()
        return require("configs.conform")
    end,
}

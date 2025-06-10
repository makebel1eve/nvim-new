return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = true,
    event = { "BufReadPost", "BufNewFile" },

    build = ":TSUpdate",
    config = function()
        return require("nvim-treesitter.configs").setup(require("configs.treesitter"))
    end,
}

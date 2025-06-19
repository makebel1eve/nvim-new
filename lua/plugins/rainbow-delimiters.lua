return {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = true,
    --    event = "BufReadPost",
    event = { "BufRead", "BufReadPost", "BufWritePost", "BufNewFile" },
}

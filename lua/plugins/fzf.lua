return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    --dependencies = { "echasnovski/mini.icons" },
    lazy = true,
    opts = {},
    cmd = "FzfLua",
    keys = {
        { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
        { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
        { "<leader>fc", "<cmd>FzfLua files cwd=" .. vim.fn.stdpath("config") .. "<cr>", desc = "Find in config" }, -- or handle this separately
        { "<leader>fh", "<cmd>FzfLua helptags<cr>", desc = "Find Help" },
        { "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "Find Keymaps" },
        { "<leader>fb", "<cmd>FzfLua builtin<cr>", desc = "Find Builtins" },
        { "<leader>fw", "<cmd>FzfLua grep_cword<cr>", desc = "Find Word" },
        { "<leader>fW", "<cmd>FzfLua grep_cWORD<cr>", desc = "Find WORD" },
        { "<leader>fd", "<cmd>FzfLua diagnostics_document<cr>", desc = "Find Diagnostics" },
        { "<leader>fr", "<cmd>FzfLua resume<cr>", desc = "Resume" },
        { "<leader>fo", "<cmd>FzfLua oldfiles<cr>", desc = "Old Files" },
        { "<leader><leader>", "<cmd>FzfLua buffers<cr>", desc = "Find Buffers" },
        { "<leader>/", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Grep Current Buffer" },
    },
}

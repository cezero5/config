return {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "VeryLazy",
        main = "nvim-treesitter.configs",
        opts = {
                ensure_installed = {
                        "lua",
                        "luadoc",
                        "bash",
                        "python"

                },
                highlight = {
                        enable = true,
                },
                ident = {
                        enable = true,
                },
        },
}

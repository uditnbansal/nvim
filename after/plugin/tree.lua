-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    prefer_startup_root = true,
    view = {
        adaptive_size = true,
        float = {
            enable = true
        }
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

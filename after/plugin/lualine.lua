require('lualine').setup({
    options = {
        theme = 'gruvbox-material',
        section_separators = { left = '', right = '' }
    },
    sections = {
        lualine_c = {
            { 'filename', path = 1 }
        }
    },
    inactive_sections = {
        lualine_c  = {
            { 'filename', path = 1 }
        }
    }
})

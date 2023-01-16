local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.setup {
    defaults = {
        mappings = {
            i = {
                ['<C-j>'] = 'move_selection_next',
                ['<C-k>'] = 'move_selection_previous'
            }
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
        },
        repo = {
            fd_opts = {
                '--no-ignore-vcs',
            },
            search_dirs = {
                '~/Work/'
            },
        }
    }
}

telescope.load_extension('fzf')
telescope.load_extension('repo')

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
            list = {
                fd_opts = {
                    '--no-ignore-vcs',
                },
                search_dirs = {
                    '/apps/northmoorefs1/udit/dev/'
                },
                tail_path = true,
            }
        }
    },
    -- file_ignore_patterns = {
    --     '_build',
    --     '_build.cx5',
    --     'nbin.opteron',
    --     'nbin.opteron_rhel6',
    -- }
}

telescope.load_extension('fzf')
telescope.load_extension('repo')
telescope.load_extension('neoclip')

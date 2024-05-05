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
        repo = {
            list = {
                fd_opts = {
                    '--no-ignore-vcs',
                },
                search_dirs = {
                    '~/Work/projects/'
                },
            }
        }
    }
}

telescope.load_extension('repo')

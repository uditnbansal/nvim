vim.g.mapleader = ","

local keymap = vim.keymap
local cmd = vim.cmd
local lsp = vim.lsp

local hop = require('hop')
local directions = require('hop.hint').HintDirection
local telescope = require('telescope')
local telescope_builtin = require('telescope.builtin')
local navigator = require('Navigator')

-- insert mode
keymap.set('i', '<C-a>', '<C-o>^')
keymap.set('i', '<C-e>', '<C-o>$')
keymap.set('i', '<C-h>', '<Left>')
keymap.set('i', '<C-l>', '<Right>')
keymap.set('i', 'jj', '<Esc>')

-- normal mode
keymap.set('n', ';', ':')
keymap.set('n', '<C-h>', navigator.left)
keymap.set('n', '<C-j>', navigator.down)
keymap.set('n', '<C-k>', navigator.up)
keymap.set('n', '<C-l>', navigator.right)
keymap.set('n', '<Leader>/', '/\\<\\><Left><Left>')
keymap.set('n', '<Leader><Leader>b', function() hop.hint_words({ direction = directions.BEFORE_CURSOR }) end)
keymap.set('n', '<Leader><Leader>j', function() hop.hint_lines({ direction = directions.AFTER_CURSOR }) end)
keymap.set('n', '<Leader><Leader>k', function() hop.hint_lines({ direction = directions.BEFORE_CURSOR }) end)
keymap.set('n', '<Leader><Leader>w', function() hop.hint_words({ direction = directions.AFTER_CURSOR }) end)
keymap.set('n', '<Leader><Tab>', ':Scratch<CR>')
keymap.set('n', '<Leader>F', lsp.buf.format, {})
keymap.set('n', '<Leader>Fc', ':%!clang-format -style=file<CR>')
keymap.set('n', '<Leader>Fj', ':%!python -m json.tool<CR>')
keymap.set('n', '<Leader>Fp', '::call Autopep8()<CR>')
keymap.set('n', '<Leader>S', ':source<CR>')
keymap.set('n', '<Leader>`', ':NvimTreeOpen ~/.config/nvim/<CR>')
keymap.set('n', '<Leader>b<Space>', ':sp<CR>')
keymap.set('n', '<Leader>bb', ':b#<CR>')
keymap.set('n', '<Leader>bd', ':bd<CR>')
keymap.set('n', '<Leader>bf', ':bfirst<CR>')
keymap.set('n', '<Leader>bl', ':blast<CR>')
keymap.set('n', '<Leader>bn', ':bn<CR>')
keymap.set('n', '<Leader>bp', ':bp<CR>')
keymap.set('n', '<Leader>bs', ':buffers<CR>')
keymap.set('n', '<Leader>cw', ':echo getcwd()<CR>')
keymap.set('n', '<Leader>dg', ':diffget<CR>')
keymap.set('n', '<Leader>e', ':e<Space>')
keymap.set('n', '<Leader>fb', telescope_builtin.buffers, {})
keymap.set('n', '<Leader>ff', function() telescope_builtin.find_files({ cwd = '$DEV' }) end)
keymap.set('n', '<Leader>fg', telescope_builtin.live_grep, {})
keymap.set('n', '<Leader>fh', telescope_builtin.help_tags, {})
keymap.set('n', '<Leader>fh', telescope_builtin.help_tags, {})
keymap.set('n', '<Leader>fr', telescope.extensions.repo.list, {})
keymap.set('n', '<Leader>fs', ':FSHere<CR>')
keymap.set('n', '<Leader>ga', ':Git add %:p<CR><CR>')
keymap.set('n', '<Leader>gbb', ':Git b<CR>')
keymap.set('n', '<Leader>gbl', ':Git blame -w<CR>')
keymap.set('n', '<Leader>gc', ':Git c<Space>')
keymap.set('n', '<Leader>gca', ':Git commit --amend<CR>')
keymap.set('n', '<Leader>gcm', ':Git cm<CR>')
keymap.set('n', '<Leader>gco', ':Gcommit<CR>')
keymap.set('n', '<Leader>gdd', ':Gvdiff HEAD<CR>')
keymap.set('n', '<Leader>gdn', ':Git dn<CR>')
keymap.set('n', '<Leader>gdp', ':Gvdiff HEAD~1<CR>')
keymap.set('n', '<Leader>gll', ':Git log --oneline -n 10<CR>')
keymap.set('n', '<Leader>glo', ':Git log -n 5<CR>')
keymap.set('n', '<Leader>gph', ':Git push<CR>')
keymap.set('n', '<Leader>gpl', ':Git pull<CR>')
keymap.set('n', '<Leader>gsh', ':Git sh<CR>')
keymap.set('n', '<Leader>gsn', ':Git sn<CR>')
keymap.set('n', '<Leader>gss', ':Git s<CR>')
keymap.set('n', '<Leader>gst', ':Git status<CR>')
keymap.set('n', '<Leader>gw', ':Gwrite<CR>')
keymap.set('n', '<Leader>h', ':sp<CR>')
keymap.set('n', '<Leader>n', ':NvimTreeToggle<CR>')
keymap.set('n', '<Leader>N', ':NvimTreeOpen $DEV<CR>')
keymap.set('n', '<Leader>pc', ':PackerClean<CR>')
keymap.set('n', '<Leader>pi', ':PackerInstall<CR>')
keymap.set('n', '<Leader>ps', ':PackerStatus<CR>')
keymap.set('n', '<Leader>pu', ':PackerUpdate<CR>')
keymap.set('n', '<Leader>q', ':bd<CR>')
keymap.set('n', '<Leader>r', ':redraw<CR>:echo expand("%:p")<CR>')
keymap.set('n', '<Leader>s', ':w<CR>')
keymap.set('n', '<Leader>uu', cmd.UndotreeToggle)
keymap.set('n', '<Leader>v', ':vsp<CR>')
keymap.set('n', '<Leader>z', ':Twilight<CR>')
keymap.set('n', '<Space>', ':nohlsearch<Bar>:echo<CR>', { silent = true })
keymap.set('n', 'Q', ':q<CR>')
keymap.set('n', '[t', ':tabprev<CR>')
keymap.set('n', ']t', ':tabnext<CR>')

-- visual mode
keymap.set('v', '<Leader>s', ':sort<CR>')

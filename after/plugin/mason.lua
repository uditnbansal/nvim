require('mason').setup({
  PATH = 'append',
  log_level = vim.log.levels.DEBUG
})

require('mason-lspconfig').setup{}

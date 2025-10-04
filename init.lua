require("config.vim")
require("config.lazy")
require("config.lsp")

vim.api.nvim_create_autocmd('TermOpen', {
  pattern = '*',
  callback = function()
    vim.cmd('startinsert')
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
  end,
})

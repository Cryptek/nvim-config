-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- enter insert mode by default on terminals
vim.api.nvim_create_autocmd({ 'TermOpen', 'BufEnter' }, {
  pattern = { 'term://*' },
  command = 'startinsert',
})

-- alias for split and open terminal
vim.api.nvim_create_user_command('Vt', function()
  vim.cmd '90vsplit | terminal'
end, { nargs = 0, bang = true })
return {}

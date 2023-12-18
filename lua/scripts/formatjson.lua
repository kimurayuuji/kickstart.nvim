vim.opt_local.filetype="json"

vim.cmd('%j')
vim.cmd [[%s/,/,\r/g]]
vim.cmd [[%s/{/{\r/g]]
vim.cmd [=[%s/\v\[\ze[^\]]/[\r/g]=]
vim.cmd [[%s/\v[^\[]\zs\]/\r]/g]]
vim.cmd [[%s/}/\r}/g]]

vim.cmd('norm gg=G')

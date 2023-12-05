vim.o.filetype='xml'

vim.cmd '%j'
vim.cmd [[%s/>/>\r/g]]
vim.cmd [[%s/\ze</\r/g]]
vim.cmd 'norm gg=G'
vim.cmd [[g/\v^[\r\n]+/d]]

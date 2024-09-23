
--sets indent to 2
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
-- sets relative and current line numbering        
vim.cmd("set nu rnu")

vim.cmd(":set scrolloff=10")
vim.cmd(":set cc=80")
--maps leaderkey and Explore func
vim.g.mapleader = " "
--vim.keymap.set("n","<leader>fs",vim.cmd.Ex)

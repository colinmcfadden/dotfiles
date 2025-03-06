local global = vim.g
local o = vim.opt

-- Editor options

o.number = true
o.number = true
o.relativenumber = true
o.signcolumn = "number"
-- Remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

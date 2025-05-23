vim.g.mapleader = " "

vim.keymap.set('n', '<leader><Tab>', ':bn<CR>', { silent = true })
vim.keymap.set('n', '<leader><S-Tab>', ':bp<CR>', { silent = true })

require("elmer_nvim.settings")
require("elmer_nvim.lazy")

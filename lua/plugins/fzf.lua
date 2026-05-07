require('fzf-lua')

vim.keymap.set('n', '<leader>fb', '<cmd>FzfLua buffers<cr>', { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>ff', '<cmd>FzfLua files<cr>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', '<cmd>FzfLua live_grep<cr>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>ft', '<cmd>FzfLua oldfiles<cr>', { desc = 'Recent files' })

--vim.keymap.set('n', '<leader>p', ':Files<CR>', {})
--vim.keymap.set('n', '<leader>g', ':Rg<CR>', {})
--vim.keymap.set('n', '<leader>i', ':Buffers<CR>', {})
--vim.keymap.set('n', '<leader>h', ':Helptags<CR>', {})

vim.keymap.set('n', '<leader>p', ':FzfLua files<CR>', {})
vim.keymap.set('n', '<leader>g', ':FzfLua grep_project<CR>', {})
vim.keymap.set('n', '<leader>i', ':FzfLua buffers<CR>', {})
vim.keymap.set('n', '<leader>h', ':FzfLua helptags<CR>', {})

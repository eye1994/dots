local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Search [P]roject [F]iles' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles'})
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })

vim.keymap.set('n', '<leader>sg', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = '[S]earch in project using [G]rep' })
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

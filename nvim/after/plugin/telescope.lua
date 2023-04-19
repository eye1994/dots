local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>sg', builtin.git_files, { desc = '[S]earch [G]it Files'})
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind current [W]ord' })

vim.keymap.set('n', '<leader>fg', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = '[F]ind using [G]rep' })
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

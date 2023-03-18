local tree = require("nvim-tree");

tree.setup();

vim.keymap.set("n", "<leader>ot", vim.cmd.NvimTreeFocus, { desc = "[O]pen [T]ree Explorer" })
vim.keymap.set("n", "<leader>ct", vim.cmd.NvimTreeClose, { desc = "[C]close [T]ree Explorer" })

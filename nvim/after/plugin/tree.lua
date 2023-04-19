local tree = require("nvim-tree");

tree.setup();

vim.keymap.set("n", "<leader>tf", vim.cmd.NvimTreeFocus, { desc = "[T]ree Explorer [F]ocus" })
vim.keymap.set("n", "<leader>tc", vim.cmd.NvimTreeClose, { desc = "[T]ree Explorer [C]lose" })

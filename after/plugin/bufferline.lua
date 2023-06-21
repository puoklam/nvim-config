local buffline = require("bufferline")

buffline.setup {
	options = {
		indicator = {
			style = 'underline'
		},
		buffer_close_icon = "x"
	}
}

vim.keymap.set("n", "<C-x>", vim.cmd.bd)
vim.keymap.set("n", "<C-[>", function() buffline.cycle(-1) end)
vim.keymap.set("n", "<C-]>", function() buffline.cycle(1) end)
vim.keymap.set("n", "<leader>1", function() buffline.go_to(1, true) end)
vim.keymap.set("n", "<leader>2", function() buffline.go_to(2, true) end)
vim.keymap.set("n", "<leader>3", function() buffline.go_to(3, true) end)
vim.keymap.set("n", "<leader>4", function() buffline.go_to(4, true) end)
vim.keymap.set("n", "<leader>5", function() buffline.go_to(5, true) end)
vim.keymap.set("n", "<leader>6", function() buffline.go_to(6, true) end)
vim.keymap.set("n", "<leader>7", function() buffline.go_to(7, true) end)
vim.keymap.set("n", "<leader>8", function() buffline.go_to(8, true) end)
vim.keymap.set("n", "<leader>9", function() buffline.go_to(9, true) end)

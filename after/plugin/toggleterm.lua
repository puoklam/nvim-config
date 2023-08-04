local Term = require('toggleterm.terminal').Terminal
local lazygit = Term:new({
	cmd = "lazygit",
	dir = "git_dir",
	firection = "float",
	float_opts = {
		border = "double"
	},
	on_open = function(term)
		vim.cmd("startinsert!")
	end
})

function LGToggle()
	lazygit:toggle()
end

vim.api.nvim_create_user_command("LGToggle", LGToggle, {})
vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua LGToggle()<CR>", { noremap = true, silent = true })

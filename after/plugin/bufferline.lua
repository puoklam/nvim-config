local buffline = require("bufferline")

buffline.setup {
	options = {
		indicator = {
			style = 'underline'
		},
		show_tab_indicators = true,
		buffer_close_icon = "x",
		separator_style = "slope",
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and "E " or (e == "warning" and "W " or "I")
				s = s .. n .. sym
			end
			return s
		end
	},
	highlights = {
		close_button_selected = {
			bg = '#FF6188',
			fg = '#2D2A2E',
		},
		buffer_selected = {
			bg = '#FF6188',
			fg = '#2D2A2E',
		},
		modified_selected = {
			bg = '#FF6188',
		},
		info_diagnostic_selected = {
			bg = '#FF6188',
		},
		warning_diagnostic_selected = {
			bg = '#FF6188',
		},
		error_diagnostic_selected = {
			bg = '#FF6188',
		}
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

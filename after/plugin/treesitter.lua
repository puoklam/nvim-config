require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "go", "rust", "javascript", "typescript", "tsx", "lua", "vim", "vimdoc", "query" },

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},

    context_commentstring = {
        enabled = true,
        enabled_autocmd = false,
    }
}

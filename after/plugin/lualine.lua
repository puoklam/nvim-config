require('lualine').setup {
	options = {
		theme = 'sonokai'
	},
	sections = {
		lualine_c = {
			{
				'filename',
				file_status = true,
				path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
			}
		}
	}
}

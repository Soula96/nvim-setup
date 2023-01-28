require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'codedark',
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff'},
		lualine_c = {'filename', 'filetype'},
		lualine_x = {'buffers', 'encoding'},
		lualine_y = { 'fileformat'},
		lualine_z = {'location'},
	},
	tabline = {},
	winbar = {},
}


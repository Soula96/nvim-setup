
require('nightfox').setup({
	options = {
		terminal_colors = true,
		dim_inactive = true,
		styles = { 
			comments = 'italic',
			functions = 'bold',
		},
		inverse = {
			visual = false,
			serach = true,
		},
	},
})


vim.cmd("colorscheme nightfox")



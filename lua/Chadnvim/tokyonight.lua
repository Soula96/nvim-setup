require("tokyonight").setup({

	style = "night",
	light_style = "storm",
	transparent = "false",
	styles = {
		comments = {italic = true},
		keywords = {bold = true},
		functions = {italic = false, bold=true},
		sidebars = "dark",
		floats = "normal",
	},
	-- Hallo, dies ist ein Test
	sidebars = {"qf"},
	dim_inactive = true,
	lualine_bold = true,
	on_colors = function(colors)
		colors.hint = '#2196f3'
	--	colors.bg = '#232b2b'
	--	colors.bg_dark = '#232b2b'
	end,
	on_highlights = function(highlights, night)
		highlights["@punctuation.bracket"] = {
			fg = "#a9b1d6"
		} 
	--	highlights["@label"] = {
	--		fg = "#1969b9"	
	--	}
		highlights["@label"] = {
			fg = "#b932be"
		}
		highlights["@operator"] = {
			fg = "#b932be"
		}
		highlights["@property"] = {
			fg = "#b932be"
		}
	--	highlights.Cursor = {
	--		bg = '#cc0000',
	--		fg = '#73daca'
	--	}
		highlights.Comment = {
			fg = '#3d85c6'
		}
		highlights.CursorLine = {
			bg = '#eeeeee'
		}
		highlights.CursorLineNr = {
			fg = '#eeeeee'
		}
		highlights.String = {
			fg = '#85c000'
		}
	--	highlights.Type = {
	--		fg = '#2ac3de'
	--	}
	--	highlights.Constant = {
	--		fg = '#ff782d'
	--	}
		highlights.CursorIM = {
			fg = "#551652"
		}
		highlights.Keyword = {
			fg = "#b932be"
		}
		highlights.LineNr = {
			fg = "#822086"
		}

	end
})
vim.g.tokyonight_italicize_strings = 1
vim.cmd("colorscheme tokyonight")


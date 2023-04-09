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
		colors.bg = '#16161e'
	    colors.bg_dark = '#16161e'
	end,
	on_highlights = function(highlights, night)
		highlights["@constructor"] = {
			fg = "#bb9af7"
		}
		highlights["@field"] = {
			fg = "#73daca"
		}
		highlights["@keyword"] = {
			fg = "#734bb3"
		}
		highlights["@keyword.function"] = {
			fg = "#bb9af7"
		}
		highlights["@label"] = {
			fg = "#a83275"
		}
		highlights["@operator"] = {
			fg = "#b1f3fa"
		}
		highlights["@parameter"] = {
			fg = "#f0c426"
		}
		highlights["@property"] = {
			fg = "#73daca"
		}
		highlights["@punctuation.bracket"] = {
			fg = "#89ddff"
		}
		highlights["@punctuation.delimiter"] = {
			fg = "#89ddff"
		}
		highlights["@punctuation.special"] = {
			fg = "#89ddff"
		}
		highlights["@punctuation.special.markdown"] = {
			fg = "#89ddff"
		}
		highlights.CursorLine = {
			bg = "#2f3063"
		}
		highlights.CursorLineNr = {
			fg = "#eeeeee",
			bg = "#2f3063"
		}
	--	highlights["@label"] = {
	--		fg = "#1969b9"	
	--	}
	--	highlights["@label"] = {
	--		fg = "#b932be"
	--	}
	--	highlights["@operator"] = {
	--		fg = "#b932be"
	--	}
	--	highlights["@property"] = {
	--		fg = "#b932be"
	--	}
	--	highlights.Cursor = {
	--		bg = '#cc0000',
	--		fg = '#73daca'
	--	}
		highlights.Comment = {
			fg = '#6873a6'
		}
	--	highlights.CursorLine = {
	--		bg = '#eeeeee'
	--	}
	--	highlights.CursorLineNr = {
	--		fg = '#eeeeee'
	--	}
	--	highlights.String = {
	--		fg = '#85c000'
	--	}
	--	highlights.Type = {
	--		fg = '#2ac3de'
	--	}
	--	highlights.Constant = {
	--		fg = '#ff782d'
	--	}
		highlights.CursorIM = {
			fg = "#551652"
		}
	--	highlights.Keyword = {
	---		fg = "#b932be"
	--	}
		highlights.LineNr = {
			fg = "#d47cde"
		}
		highlights.qfLineNr = {
			fg = "#822086"
		}

	end
})
vim.g.tokyonight_italicize_strings = 1
vim.cmd("colorscheme tokyonight")


-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\MaxPr\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\MaxPr\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\MaxPr\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\MaxPr\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\MaxPr\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\22\0\0\a\0H\0k6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\17\0=\3\18\0025\3\20\0005\4\19\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \4=\4!\3=\3\"\0025\3#\0005\4$\0=\4%\0035\4'\0005\5&\0=\5(\0045\5)\0005\6*\0=\6+\5=\5,\0045\5-\0005\6.\0=\6+\5=\5/\4=\0040\3=\0031\0024\3\0\0=\0032\0025\0039\0005\0043\0004\5\0\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\0044\5\0\0=\0057\0044\5\0\0=\0058\4=\4:\0035\4<\0005\5;\0=\0050\0045\5=\0=\5>\4=\0041\3=\3?\0025\3@\0005\4B\0005\5A\0=\0050\4=\0041\3=\3C\0025\3F\0005\4D\0005\5E\0=\0050\4=\0041\3=\3!\2B\0\2\0016\0\0\0009\0\1\0'\2G\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\agr\20git_revert_file\agu\21git_unstage_file\aga\17git_add_file\agc\15git_commit\agp\rgit_push\agg\24git_commit_and_push\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\3\21group_empty_dirs\2\18show_unloaded\2\24follow_current_file\2\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-p>\19move_cursor_up\n<C-n>\21move_cursor_down\v<down>\21move_cursor_down\t<up>\19move_cursor_up\1\0\0\1\0\n\a]g\22next_git_modified\n<c-x>\17clear_filter\t<bs>\16navigate_up\6H\18toggle_hidden\6f\21filter_on_submit\a[g\22prev_git_modified\6.\rset_root\6#\17fuzzy_sorter\6D\27fuzzy_finder_directory\6/\17fuzzy_finder\19filtered_items\1\0\4\26hijack_netrw_behavior\17open_default\27use_libuv_file_watcher\1\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\20hide_gitignored\2\18hide_dotfiles\2\16hide_hidden\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\23\n<esc>\19revert_preview\6w\28open_with_window_picker\t<cr>\topen\6c\tcopy\6y\22copy_to_clipboard\6z\20close_all_nodes\6x\21cut_to_clipboard\6s\16open_vsplit\6p\25paste_from_clipboard\6r\vrename\6m\tmove\6t\16open_tabnew\6q\17close_window\6R\frefresh\6<\16prev_source\6>\16next_source\6?\14show_help\6A\18add_directory\18<2-LeftMouse>\topen\6l\18focus_preview\6d\vdelete\6S\15open_split\6C\15close_node\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\b\fdeleted\b✖\nadded\5\frenamed\b\rmodified\5\14untracked\b\fignored\b\runstaged\b\vstaged\b\tname\1\0\3\26use_git_status_colors\2\14highlight\20NeoTreeFileName\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\14highlight\20NeoTreeFileIcon\fdefault\6*\18folder_closed\b\16folder_open\b\17folder_empty\bﰊ\vindent\1\0\t\18indent_marker\b│\23last_indent_marker\b└\23expander_collapsed\b\16indent_size\3\2\fpadding\3\1\22expander_expanded\b\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\17with_markers\2\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\5\25close_if_last_window\1\23popup_border_style\frounded\26sort_case_insensitive\1\22enable_git_status\2\23enable_diagnostics\2\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\b\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\t \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\t \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\t \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\23other_win_hl_color\f#e35e4f\19autoselect_one\2\20include_current\1\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\6\0\26\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0005\3\3\0005\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\4=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\3>\3\1\2B\0\2\1K\0\1\0\nsigns\1\0\5\fwarning\b\nerror\b\nother\b﫠\thint\b\16information\b\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\frefresh\6r\vcancel\n<esc>\fpreview\6p\19toggle_preview\6P\nclose\6q\tnext\6j\rprevious\6k\nhover\6K\16toggle_mode\6m\1\0\15\14auto_open\1\17indent_lines\2\17auto_preview\2\ngroup\2\fpadding\2\14fold_open\b\16fold_closed\b\nwidth\0032\15auto_close\1\tmode\26workspace_diagnostics\vheight\3\n\25use_diagnostic_signs\1\rposition\vbottom\14auto_fold\1\nicons\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\MaxPr\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\6\0\26\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0005\3\3\0005\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\4=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\3>\3\1\2B\0\2\1K\0\1\0\nsigns\1\0\5\fwarning\b\nerror\b\nother\b﫠\thint\b\16information\b\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\frefresh\6r\vcancel\n<esc>\fpreview\6p\19toggle_preview\6P\nclose\6q\tnext\6j\rprevious\6k\nhover\6K\16toggle_mode\6m\1\0\15\14auto_open\1\17indent_lines\2\17auto_preview\2\ngroup\2\fpadding\2\14fold_open\b\16fold_closed\b\nwidth\0032\15auto_close\1\tmode\26workspace_diagnostics\vheight\3\n\25use_diagnostic_signs\1\rposition\vbottom\14auto_fold\1\nicons\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\23other_win_hl_color\f#e35e4f\19autoselect_one\2\20include_current\1\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\22\0\0\a\0H\0k6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\17\0=\3\18\0025\3\20\0005\4\19\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \4=\4!\3=\3\"\0025\3#\0005\4$\0=\4%\0035\4'\0005\5&\0=\5(\0045\5)\0005\6*\0=\6+\5=\5,\0045\5-\0005\6.\0=\6+\5=\5/\4=\0040\3=\0031\0024\3\0\0=\0032\0025\0039\0005\0043\0004\5\0\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\0044\5\0\0=\0057\0044\5\0\0=\0058\4=\4:\0035\4<\0005\5;\0=\0050\0045\5=\0=\5>\4=\0041\3=\3?\0025\3@\0005\4B\0005\5A\0=\0050\4=\0041\3=\3C\0025\3F\0005\4D\0005\5E\0=\0050\4=\0041\3=\3!\2B\0\2\0016\0\0\0009\0\1\0'\2G\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\agr\20git_revert_file\agu\21git_unstage_file\aga\17git_add_file\agc\15git_commit\agp\rgit_push\agg\24git_commit_and_push\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\3\21group_empty_dirs\2\18show_unloaded\2\24follow_current_file\2\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-p>\19move_cursor_up\n<C-n>\21move_cursor_down\v<down>\21move_cursor_down\t<up>\19move_cursor_up\1\0\0\1\0\n\a]g\22next_git_modified\n<c-x>\17clear_filter\t<bs>\16navigate_up\6H\18toggle_hidden\6f\21filter_on_submit\a[g\22prev_git_modified\6.\rset_root\6#\17fuzzy_sorter\6D\27fuzzy_finder_directory\6/\17fuzzy_finder\19filtered_items\1\0\4\26hijack_netrw_behavior\17open_default\27use_libuv_file_watcher\1\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\20hide_gitignored\2\18hide_dotfiles\2\16hide_hidden\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\23\n<esc>\19revert_preview\6w\28open_with_window_picker\t<cr>\topen\6c\tcopy\6y\22copy_to_clipboard\6z\20close_all_nodes\6x\21cut_to_clipboard\6s\16open_vsplit\6p\25paste_from_clipboard\6r\vrename\6m\tmove\6t\16open_tabnew\6q\17close_window\6R\frefresh\6<\16prev_source\6>\16next_source\6?\14show_help\6A\18add_directory\18<2-LeftMouse>\topen\6l\18focus_preview\6d\vdelete\6S\15open_split\6C\15close_node\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\b\fdeleted\b✖\nadded\5\frenamed\b\rmodified\5\14untracked\b\fignored\b\runstaged\b\vstaged\b\tname\1\0\3\26use_git_status_colors\2\14highlight\20NeoTreeFileName\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\14highlight\20NeoTreeFileIcon\fdefault\6*\18folder_closed\b\16folder_open\b\17folder_empty\bﰊ\vindent\1\0\t\18indent_marker\b│\23last_indent_marker\b└\23expander_collapsed\b\16indent_size\3\2\fpadding\3\1\22expander_expanded\b\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\17with_markers\2\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\5\25close_if_last_window\1\23popup_border_style\frounded\26sort_case_insensitive\1\22enable_git_status\2\23enable_diagnostics\2\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23DiagnosticSignHint\ttext\b\23DiagnosticSignHint\1\0\2\vtexthl\23DiagnosticSignInfo\ttext\t \23DiagnosticSignInfo\1\0\2\vtexthl\23DiagnosticSignWarn\ttext\t \23DiagnosticSignWarn\1\0\2\vtexthl\24DiagnosticSignError\ttext\t \24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

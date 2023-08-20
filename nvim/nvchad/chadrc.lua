---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

local modes = {
	["n"] = { "norm"                 , "◆" , "St_NormalMode" }    ,
	["niI"] = { "norm i"           , "◆" , "St_NormalMode" }    ,
	["niR"] = { "norm r"           , "◆" , "St_NormalMode" }    ,
	["niV"] = { "norm v"           , "◆" , "St_NormalMode" }    ,
	["no"] = { "N-PENDING"           , "◆" , "St_NormalMode" }    ,
	["i"] = { "in"               , "●" , "St_InsertMode" }    ,
	["ic"] = { "in (completion)" , "●" , "St_InsertMode" }    ,
	["ix"] = { "in completion"   , "●" , "St_InsertMode" }    ,
	["t"] = { "term"             , "❯" , "St_TerminalMode" }  ,
	["nt"] = { "nterm"           , "❯" , "St_NTerminalMode" } ,
	["v"] = { "vis"               , "▼" , "St_VisualMode" }    ,
	["V"] = { "vis-ln"               , "▼" , "St_VisualMode" }    ,
	["Vs"] = { "v-ln(Ctrl O)"     , "▼" , "St_VisualMode" }    ,
	[""] = { "vlk"             , "▼" , "St_VisualMode" }    ,
	["R"] = { "rep"              , "◌" , "St_ReplaceMode" }   ,
	["Rv"] = { "v-rep"           , "◌" , "St_ReplaceMode" }   ,
	["s"] = { "sel"               , "◎" , "St_SelectMode" }    ,
	["S"] = { "sel-ln"               , "◎" , "St_SelectMode" }    ,
	[""] = { "sel-blk"             , "◎" , "St_SelectMode" }    ,
	["c"] = { "cmd"              , "⨀" , "St_CommandMode" }   ,
	["cv"] = { "cmd"             , "⨀" , "St_CommandMode" }   ,
	["ce"] = { "cmd"             , "⨀" , "St_CommandMode" }   ,
	["r"] = { "prompt"               , "┅" , "St_ConfirmMode" }   ,
	["rm"] = { "more"                , "+" , "St_ConfirmMode" }   ,
	["r?"] = { "confirm"             , "✓" , "St_ConfirmMode" }   ,
	["!"] = { "shell"                , "❱" , "St_TerminalMode" }  ,
}

M.ui = {
	theme = "monekai",
	theme_toggle = { "monekai", "one_light" },

	hl_override = highlights.override,
	hl_add = highlights.add,
	statusline = {
		theme = "default",
		-- theme = "minimal"
		separator_style = "block",
		overriden_modules = function()
			-- local st_modules = require("nvchad_ui.statusline.default")
			-- this is just default table of statusline modules

			return {
				mode = function()
					-- return st_modules.mode() .. " bruh "
					-- or just return "" to hide this module
					-- return ""
					local m = vim.api.nvim_get_mode().mode

					-- return current_mode .. mode_sep1 .. "%#ST_EmptySpace#" .. sep_r
					-- return modes[m][1] .. " " .. modes[m][2]
					return "%#"
						.. modes[m][3]
						.. "#"
						.. " "
						.. modes[m][2]
						.. " "
						.. modes[m][1]
						.. " "
						.. "%#"
						.. modes[m][3]
						.. "Sep"
						.. "#"
				end,
			}
		end,
	},
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M

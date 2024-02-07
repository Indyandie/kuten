---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

local modes = {
  -- See https://github.com/NvChad/ui/blob/v2.0/lua/nvchad/statusline/default.lua

  -- Normal
	["n"] = { "nor", "●", "St_NormalMode" },
	["niI"] = { "nor i", "●", "St_NormalMode" },
	["niR"] = { "nor r", "●", "St_NormalMode" },
	["niV"] = { "nor v", "●", "St_NormalMode" },
	["no"] = { "N-PENDING", "●", "St_NormalMode" },

  -- Insert
	["i"] = { "ins", "◉", "St_InsertMode" },
	["ic"] = { "ins (completion)", "◉", "St_InsertMode" },
	["ix"] = { "ins completion", "◉", "St_InsertMode" },

  -- Terminal
	["t"] = { "term", "❯", "St_TerminalMode" },
	["nt"] = { "nterm", "❯", "St_NTerminalMode" },

  -- Visual
	["v"] = { "vis", "◍", "St_VisualMode" },
	["V"] = { "vis-ln", "◍", "St_VisualMode" },
	["Vs"] = { "v-ln(Ctrl O)", "◍", "St_VisualMode" },
	[""] = { "vlk", "◍", "St_VisualMode" },

  -- Replace
	["R"] = { "rep", "◌", "St_ReplaceMode" },
	["Rv"] = { "v-rep", "◌", "St_ReplaceMode" },

  -- Select
	["s"] = { "sel", "◎", "St_SelectMode" },
	["S"] = { "sel-ln", "◎", "St_SelectMode" },
	[""] = { "sel-blk", "◎", "St_SelectMode" },

  -- Command
	["c"] = { "cmd", "⨀", "St_CommandMode" },
	["cv"] = { "cmd", "⨀", "St_CommandMode" },
	["ce"] = { "cmd", "⨀", "St_CommandMode" },

  -- Confirm
	["r"] = { "prompt", "┅", "St_ConfirmMode" },
	["rm"] = { "more", "+", "St_ConfirmMode" },
	["r?"] = { "confirm", "✓", "St_ConfirmMode" },
	["!"] = { "shell", "❱", "St_TerminalMode" },
}

M.ui = {
	theme = "monekai",
	theme_toggle = { "monekai", "one_light" },

	hl_override = highlights.override,
	hl_add = highlights.add,

	statusline = {
		theme = "minimal",
		separator_style = "block",

    overriden_modules = function(modules)
      modules[1] = (function()
        local m = vim.api.nvim_get_mode().mode
        return "%#"
						.. modes[m][3] .. "#" .. " " .. modes[m][2] .. " " .. modes[m][1] .. " " .. "%#" .. modes[m][3] .. "Sep" .. "#"
      end)()

      table.insert(
        modules,
        2,
        " "
      )
    end,
	},
}

M.plugins = "custom.plugins"

M.mappings = require("custom.mappings")

return M

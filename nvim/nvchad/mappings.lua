---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>tbl"] = { ":Tabularize /| <CR>", "format markdown tables" },
    ["<leader>co"] = { ":!bat % | cb cp && echo 'copied file %' <CR>", "Copy current file contents" },
  },
}

--
-- asflj |  lsafj |  asdlj
-- asflj |  lsafj |  asdlj
-- asflj |  lsafj |  asdlj
-- more keybinds!

return M

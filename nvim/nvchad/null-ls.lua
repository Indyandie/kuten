-- local present, null_ls = pcall(require, "null-ls")
local null_ls = require "null-ls"

-- if not present then
--   return
-- end

local fmt = null_ls.builtins.formatting

local sources = {

  -- webdev stuff
  fmt.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  -- fmt.prettier.with { filetypes = { "yaml", "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  fmt.prettier,

  -- Lua
  fmt.stylua,
  -- fmt.luaformatter,

  -- cpp
  fmt.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}

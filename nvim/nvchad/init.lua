-- local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local g = vim.g
local b = vim.b


g.toggle_theme_icon = ""

-- g.csv_no_conceal = false
g.csv_nl = 1
b.csv_arrange_align = "l*"
b.csv_arrange_use_all_rows = 1
-- g.csv_highlight_column = 'y'
g.csv_no_column_highlight = 1

-- Rainbow CSV
g.disable_rainbow_csv_autodetect = 1

-- g.polyglot_disabled = { 'md', 'markdown' }

-- vim.markdown

g.vim_markdown_fenced_languages = {
	"rust",
	"c++=cpp",
	"viml=vim",
	"bash=sh",
	"zsh",
	"ini=dosini",
	"js=javascript",
	"md=md",
	"zsh=sh",
	"shell=sh",
	"python",
	"py=python",
	"html=html",
}
g.vim_markdown_folding_disabled = 1
g.vim_markdown_conceal = 0
g.vim_markdown_conceal_code_blocks = 0

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--

opt.cursorline = true

-- set cursor
opt.guicursor = "i:hor100-Cursor"
opt.guicursor:append("i:blinkwait10")

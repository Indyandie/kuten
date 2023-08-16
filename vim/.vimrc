"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" horizontal overflow
" set nowrap
set wrap

" CSV.vim settings
filetype plugin on
" let g:csv_default_delim=','
let g:csv_no_conceal = 1
" let g:csv_no_column_highlight = 1
" let g:csv_highlight_column = 'y'

" Rainbow CSV
let g:rbql_with_headers = 1

" Set csv to rfc_csv for multiline support
" au BufRead,BufNewFile *.csv set syntax=rfc_csv

" higlights
syntax on

" set spell spelllang=en_us

" set clipboard^=unnamed
"set clipboard=unnamedplus
set clipboard^=unnamed,unnamedplus
set guioptions+=a
" This should be looped over
noremap <Leader>P "+p
noremap y "*y
noremap yy "*yy
noremap y$ "*y$
noremap y0 "*y0
noremap y% "*y%
noremap yG "*yG
noremap ygg "*ygg
noremap d "*d
noremap dd "*dd
noremap d$ "*d$
noremap d0 "*d0
noremap d% "*d%
noremap dG "*dG
noremap dgg "*dgg
noremap P "*P
noremap p "*p

augroup wayland_clipboard
  au!
  au TextYankPost * call system("wl-copy", @")
augroup END


" mouse
set mouse=a

let mapleader = ","

"UI
"mode
set showmode

"command
set showcmd

" line numbers
set nu

" highlight search
set hlsearch

" cursor pos
set cursorline

" vim-markdown
let g:vim_markdown_fenced_languages = ["c++=cpp", 'viml=vim', 'bash=sh', 'ini=dosini', 'js=javascript', 'md=md', 'zh=sh', 'shell=sh', 'python', 'py=python', 'html=html']

" python start
set encoding=utf8
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set hidden " Hide unused buffers
set autoindent " Indent a new line
set mouse=a " Allow to use the mouse in the editor
set splitbelow splitright " Change the split screen behavior
set wildmenu " Show a more advance menu
filetype plugin indent on   " Allow auto-indenting depending on file type
set ttyfast " Speed up scrolling in Vim

let g:kite_supported_languages = ['python', 'javascript']


" The default vimrc file.
"
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2021 Nov 17
"
" This is loaded if no vimrc file was found.
" Except when Vim is run with "-u NONE" or "-C".
" Individual settings can be reverted with ":set option&".
" Other commands can be reverted as mentioned below.

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Bail out if something that ran earlier, e.g. a system wide vimrc, does not
" want Vim to use these default values.
if exists('skip_defaults_vim')
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Avoid side effects when it was already reset.
if &compatible
  set nocompatible
endif

" When the +eval feature is missing, the set command above will be skipped.
" Use a trick to reset compatible only when the +eval feature is missing.
silent! while 0
  set nocompatible
silent! endwhile

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line

set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key

" Show @@@ in the last line if it is truncated.
set display=truncate

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

" Do incremental searching when it's possible to timeout.
if has('reltime')
  set incsearch
endif

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries.
if has('win32')
  set guioptions-=t
endif

" Don't use Ex mode, use Q for formatting.
" Revert with ":unmap Q".
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine.  By enabling it you
" can position the cursor, Visually select and scroll with the mouse.
" Only xterm can grab the mouse events when using the shift key, for other
" terminals use ":", select text and press Esc.
if has('mouse')
  if &term =~ 'xterm'
    set mouse=a
  else
    set mouse=nvi
  endif
endif

" Only do this part when Vim was compiled with the +eval feature.
if 1

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  " Revert with ":filetype off".
  filetype plugin indent on

  " Put these in an autocmd group, so that you can revert them with:
  " ":augroup vimStartup | exe 'au!' | augroup END"
  augroup vimStartup
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid, when inside an event handler
    " (happens when dropping a file on gvim) and for a commit message (it's
    " likely a different one than last time).
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif

  augroup END

  " Quite a few people accidentally type "q:" instead of ":q" and get confused
  " by the command line window.  Give a hint about how to get out.
  " If you don't like this you can put this in your vimrc:
  " ":augroup vimHints | exe 'au!' | augroup END"
  augroup vimHints
    au!
    autocmd CmdwinEnter *
	  \ echohl Todo | 
	  \ echo 'You discovered the command-line window! You can close it with ":q".' |
	  \ echohl None
  augroup END

endif

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).
" if &t_Co > 2 || has("gui_running")
  " Revert with ":syntax off".
"  syntax on

  " I like highlighting strings inside C comments.
  " Revert with ":unlet c_comment_strings".
"  let c_comment_strings=1
"endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If set (default), this may break plugins (but it's backward
  " compatible).
  set nolangremap
endif

" vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')

" nerdtree
Plug 'preservim/nerdtree'

" ranger (can be used with nerdtree)
" press leader ',' and then 'f'
Plug 'francoiscabrol/ranger.vim'

" Wrap it up
Plug 'tpope/vim-surround'

" # Plugins
Plug 'sheerun/vim-polyglot' " syntax hls
Plug 'Xuyuanp/nerdtree-git-plugin' " git status flags
Plug 'jiangmiao/auto-pairs' " matching brackets
Plug 'davidhalter/jedi-vim' " auto-complete
Plug 'junegunn/vim-easy-align' " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

" vim-fugitive
Plug 'tpope/vim-fugitive'

" commenter
Plug 'preservim/nerdcommenter'

Plug 'tpope/vim-commentary'

" tabs
Plug 'godlygeek/tabular'

" markdown
Plug 'preservim/vim-markdown'

" js
Plug 'pangloss/vim-javascript'

" python
Plug 'vim-scripts/indentpython.vim'

" CSV colors
Plug 'mechatroner/rainbow_csv'

" themes
Plug 'srcery-colors/srcery-vim'

" svelte
Plug 'leafOfTree/vim-svelte-plugin'

" emmet - make vim very slow even on non .html files
Plug 'mattn/emmet-vim'

" repeat non native commands
Plug 'tpope/vim-repeat'

" eww yuck
Plug 'elkowar/yuck.vim'

call plug#end()

filetype plugin on " nerdcommenter dependency

" emmet config 
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_install_global = 0
autocmd FileType html,css,markdown,md,jsx,javascript,javascriptreact EmmetInstall
let g:user_emmet_leader_key='<c-m>'

" ColorTheme

color srcery
set background=dark
hi Comment ctermfg=DarkYellow 

"color styles
hi NormalColor ctermbg=black ctermfg=blue
hi CommandColor ctermbg=blue ctermfg=black
hi InsertColor ctermbg=black ctermfg=lightgreen
hi ReplaceColor ctermbg=black ctermfg=darkred
hi VisualColor ctermbg=black ctermfg=red
hi FileType ctermbg=cyan ctermfg=black

" md disable folding and conceal
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" Status bar
set laststatus=2

set statusline=
set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ ●\ nor\ ':''}
set statusline+=%#CommandColor#%{(mode()=='c')?'\ \ ○\ cmd\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ ◉\ ins\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ ⊙\ rep\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ ◍\ vis\ ':''}
set statusline+=%#Cursor#       " colour
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#FileType#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\%3p%%\                " percentage



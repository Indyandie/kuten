ZSH_HIGHLIGHT_HIGHLIGHTERS+=(brackets pattern line)

# colors (kurokula)
red_normal="#D23E08"
red_light="#FFB7B7"
red_dark="#B66056"
green_normal="#54CA74"
green_light="#C1FFAE"
green_dark="#85B1A9"
blue_normal="#2AB9FF"
blue_light="#A1D9FF"
blue_dark="#6890D7"
cyan_normal="#1EF9F5"
cyan_light="#8EFFF3"
cyan_dark="#60BEBE"
magenta_normal="#FF50DA"
magenta_light="#FFA2ED"
magenta_dark="#CC83BD"
yellow_normal="#FFF700"
yellow_light="#FCFFB8"
yellow_dark="#DBBB43"
black_normal="#333333"
black_light="#515151"
black_dark="#141515"
white_normal="#DDD0C4"
white_light="#FFFFFF"
white_dark="#94959B"
purple_normal="#9E60EC"
purple_light="#A994FF"
purple_dark="#887AA3"
orange_normal="#E59605"
orange_light="#FFC663"
orange_dark="#AB7B4E"
brown_normal="#9D5918"
brown_light="#F9CFB9"
brown_dark="#837369"

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# unknown tokens / errors
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=red,bold"

# shell reserved words (if, for)
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=$blue_dark"

# aliases
ZSH_HIGHLIGHT_STYLES[alias]="fg=$yellow_light,bold,italic"

# assign a specific command to a file type
# ZSH_HIGHLIGHT_STYLES[suffix-alias]="fg=red"

# global aliases
# Aggro alias that will translate in any position the alias is present
# ZSH_HIGHLIGHT_STYLES[global-alias]="fg=red"

# shell builtin commands (shift, pwd, zstyle)
ZSH_HIGHLIGHT_STYLES[builtin]="fg=$blue_normal,bold,underline"

# function names (mcd)
ZSH_HIGHLIGHT_STYLES[function]="fg=$purple_light,bold,underline"

# command names
ZSH_HIGHLIGHT_STYLES[command]="fg=$yellow_dark,bold,underline"

# precommand modifiers (e.g., noglob, builtin)
ZSH_HIGHLIGHT_STYLES[precommand]="fg=$green_light,italic,underline"

# command separation tokens (;, &&)
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=$white_dark,italic"

# hashed commands
# ZSH_HIGHLIGHT_STYLES[hashed-command]="fg=red"

# a directory name in command position when the AUTO_CD option is set
ZSH_HIGHLIGHT_STYLES[autodirectory]="fg=$red_light,italic,underline"

# existing filenames
ZSH_HIGHLIGHT_STYLES[path]="fg=$blue_light,underline"

# path separators in filenames (/); if unset, path is used (default)
ZSH_HIGHLIGHT_STYLES[path_pathseparator]="fg=$white_light"

# prefixes of existing filenames
ZSH_HIGHLIGHT_STYLES[path_prefix]="fg=$blue_dark"

# path separators in prefixes of existing filenames (/); if unset, path_prefix is used (default)
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]="fg=$white_dark"

# globbing expressions (*.txt)
ZSH_HIGHLIGHT_STYLES[globbing]="fg=$magenta_light,bold"

# history expansion expressions (!foo and ^foo^bar)
ZSH_HIGHLIGHT_STYLES[history-expansion]="fg=$green_light,bold,underline"

# command substitutions ($(echo foo))
ZSH_HIGHLIGHT_STYLES[command-substitution]="fg=$white_normal,bold"

# command substitution delimiters ($( and ))
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]="fg=$green_light,bold"

# an unquoted command substitution ($(echo foo))
ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]="fg=$white_light"

# an unquoted command substitution delimiters ($( and ))
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]="fg=$white_light"

# a quoted command substitution ("$(echo foo)")
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]="fg=$green_light"

# a quoted command substitution delimiters ("$( and )")
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]="fg=$green_light"

# process substitutions (<(echo foo))
ZSH_HIGHLIGHT_STYLES[process-substitution]="fg=$magenta_light,bold,underline"

# process substitution delimiters (<( and ))
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]="fg=$magenta_light,bold"

# arithmetic expansion $(( 42 )))
ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]="fg=$magenta_light,bold"

# single-hyphen options (-o)
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=$cyan_light,bold"

# double-hyphen options (--option)
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=$cyan_light,bold,underline"

# backtick command substitution (`foo`)
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="fg=$purple_light,bold"

# unclosed backtick command substitution (`foo)
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]="fg=$red_normal,bold"

# backtick command substitution delimiters (`)
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]="fg=$purple_light,bold"

# single-quoted arguments ('foo')
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=$green_normal"

# unclosed single-quoted arguments ('foo)
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]="fg=$red_dark,underline"

# double-quoted arguments ("foo")
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=$green_dark"

# unclosed double-quoted arguments ("foo)
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]="fg=$red_dark,underline"

# dollar-quoted arguments ($'foo')
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="fg=$magenta_light"

# unclosed dollar-quoted arguments ($'foo)
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]="fg=$red_normal,underline"

# two single quotes inside single quotes when the RC_QUOTES option is set ('foo''bar')
# ZSH_HIGHLIGHT_STYLES[rc-quote]="fg=red"

# parameter expansion inside double quotes ($foo inside "")
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=$orange_dark,bold,underline"

# backslash escape sequences inside double-quoted arguments (\" in "foo\"bar")
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="fg=$green_light,bold"

# backslash escape sequences inside dollar-quoted arguments (\x in $'\x48')
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]="fg=$brown_light,bold"

# parameter assignments (x=foo and x=( ))
ZSH_HIGHLIGHT_STYLES[assign]="fg=$orange_normal,bold"

# redirection operators (<, >, etc)
ZSH_HIGHLIGHT_STYLES[redirection]="fg=$magenta_light,bold"

# comments, when setopt INTERACTIVE_COMMENTS is in effect (echo # foo)
ZSH_HIGHLIGHT_STYLES[comment]="fg=$yellow_light,underline"

# elided parameters in command position ($x ls when $x is unset or empty)
ZSH_HIGHLIGHT_STYLES[comment]="fg=$red_normal,standout"

# named file descriptor (the fd in echo foo {fd}>&2)
ZSH_HIGHLIGHT_STYLES[named-fd]="fg=$green_normal,bold,standout"

# numeric file descriptor (the 2 in echo foo {fd}>&2)
ZSH_HIGHLIGHT_STYLES[numeric-fd]="fg=$cyan_dark,bold"

# a command word other than one of those enumerated above (other than a command, precommand, alias, function, or shell builtin command).
ZSH_HIGHLIGHT_STYLES[arg0]="fg=$white_normal"

# everything else
# ZSH_HIGHLIGHT_STYLES[default]="fg=red"

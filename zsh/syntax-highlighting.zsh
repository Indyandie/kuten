ZSH_HIGHLIGHT_HIGHLIGHTERS+=(brackets pattern line)

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# unknown tokens / errors
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'

# shell reserved words (if, for)
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=blue'

# aliases
ZSH_HIGHLIGHT_STYLES[alias]='fg=yellow,bold,italic'

# assign a specific command to a file type
# ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=red'

# global aliases 
# Aggro alias that will translate in any positioon the alias is present
# ZSH_HIGHLIGHT_STYLES[global-alias]='fg=red'

# shell builtin commands (shift, pwd, zstyle)
ZSH_HIGHLIGHT_STYLES[builtin]='fg=magenta,bold,underline'

# function names
ZSH_HIGHLIGHT_STYLES[function]='fg=yellow,bold,underline'
    
# command names
ZSH_HIGHLIGHT_STYLES[command]='fg=magenta,bold'

# precommand modifiers (e.g., noglob, builtin)
ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue,italic,underline'

# command separation tokens (;, &&)
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=white,italic'

# hashed commands
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=red'

# a directory name in command position when the AUTO_CD option is set
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=blue,italic,underline'

# existing filenames
ZSH_HIGHLIGHT_STYLES[path]='fg=white,underline'

# path separators in filenames (/); if unset, path is used (default)
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=red'

# prefixes of existing filenames
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=blue'

# path separators in prefixes of existing filenames (/); if unset, path_prefix is used (default)
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=yellow'

# globbing expressions (*.txt)
ZSH_HIGHLIGHT_STYLES[globbing]='fg=magenta'

# history expansion expressions (!foo and ^foo^bar)
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=green'

# command substitutions ($(echo foo))
ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=blue'

# an unquoted command substitution ($(echo foo))
ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=cyan'

# a quoted command substitution ("$(echo foo)")
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=blue'

# command substitution delimiters ($( and ))
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=blue'

# an unquoted command substitution delimiters ($( and ))
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=blue'

# a quoted command substitution delimiters ("$( and )")
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=blue'

# process substitutions (<(echo foo))
ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=blue'

# process substitution delimiters (<( and ))
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=green'

# arithmetic expansion $(( 42 )))
ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=cyan'

# single-hyphen options (-o)
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan,bold'

# double-hyphen options (--option)
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=cyan,bold'

# backtick command substitution (`foo`)
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=blue,bold'

# unclosed backtick command substitution (`foo)
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=blue,bold'

# backtick command substitution delimiters (`)
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=blue,bold'

# single-quoted arguments ('foo')
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=green'

# unclosed single-quoted arguments ('foo)
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=green,underline'

# double-quoted arguments ("foo")
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=green'

# unclosed double-quoted arguments ("foo)
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=green,underline'

# dollar-quoted arguments ($'foo')
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=blue'

# unclosed dollar-quoted arguments ($'foo)
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=blue,underline'

# two single quotes inside single quotes when the RC_QUOTES option is set ('foo''bar')
# ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=red'

# parameter expansion inside double quotes ($foo inside "")
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=yellow,bold,underline'

# backslash escape sequences inside double-quoted arguments (\" in "foo\"bar")
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=cyan,bold'

# backslash escape sequences inside dollar-quoted arguments (\x in $'\x48')
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=cyan,bold'

# parameter assignments (x=foo and x=( ))
ZSH_HIGHLIGHT_STYLES[assign]='fg=yellow'

# redirection operators (<, >, etc)
ZSH_HIGHLIGHT_STYLES[redirection]='fg=magenta,bold'

# comments, when setopt INTERACTIVE_COMMENTS is in effect (echo # foo)
ZSH_HIGHLIGHT_STYLES[comment]='fg=white'

# elided parameters in command position ($x ls when $x is unset or empty)
ZSH_HIGHLIGHT_STYLES[comment]='fg=red,standout'

# named file descriptor (the fd in echo foo {fd}>&2)
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=green,standout'

# numeric file descriptor (the 2 in echo foo {fd}>&2)
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=cyan,bold'

# a command word other than one of those enumerated above (other than a command, precommand, alias, function, or shell builtin command).
ZSH_HIGHLIGHT_STYLES[arg0]='fg=white'

# everything else
# ZSH_HIGHLIGHT_STYLES[default]='fg=red'

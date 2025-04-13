###
#	Welcome to my theme!!! There's not much to it, it's just robbyrussel with some custom colours.
###

####
# Colours :)
###

# Make sure terminal is set to resolve 256 bit colours.
export COLORTERM="xterm-256color"
export TERM="xterm-256color"

## Define custom colors

# Normal
eval pink='$FG[204]'
eval pastel_yellow='$FG[194]'
eval pastel_blue='$FG[146]'
eval my_white='$FG[051]'

# Error
eval bad_red='$FG[001]'

###
# Terminal Prompt
###

# %B means bold, otherwise %% is for templating I think. ternary operator is for error handling
# Right-side = error behaviour, left-side = normal behaviour.
BAD_PROMPT="%{%B$bad_red%}%1{➜%} %{$bad_red%}%c%{$reset_color%}"
GOOD_PROMPT="%{%B$my_white%}%1{➜%} %{$pink%}%c%{$reset_color%}"

PROMPT="%(?:$GOOD_PROMPT :$BAD_PROMPT )"
PROMPT+=' $(git_prompt_info)'


###
# Git Specific prompt stuff
###
ZSH_THEME_GIT_PROMPT_PREFIX="%{$pastel_blue%}git:(%{$pastel_yellow%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$pastel_blue%}) %{$pastel_yellow%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$pastel_blue%})"

###
# System messages
###
system_style="%{%B$my_white%}%1{⋆%}"

function sysmsg {
  local message="$*"
  print -P $system_style "${message}"
}

function byebye {
  print -P $system_style "bye bye!!"
  sleep 0.2
}

sysmsg "Heyy! It's %D%t."

trap byebye EXIT

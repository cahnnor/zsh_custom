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
# Git Specific prompt themes
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

###
# Prompt Settings
###
function format_prompt {
  BAD_PROMPT="%{%B$bad_red%}%1{➜%} %{$bad_red%}%c%{$reset_color%}"
  GOOD_PROMPT="%{%B$my_white%}%1{➜%} %{$pink%}%c%{$reset_color%}"
  
  if [ "$1" -eq 0 ]; then
    echo $GOOD_PROMPT
  else
    echo $BAD_PROMPT
  fi
}

PROMPT="%(?: $(format_prompt 0) : $(format_prompt 1) ) $(git_prompt_info)"

sysmsg "Heyy! It's %D%t."

trap byebye EXIT

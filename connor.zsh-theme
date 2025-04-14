###########
# Colours #
###########

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

##############################
# Git Specific prompt themes #
##############################
ZSH_THEME_GIT_PROMPT_PREFIX="%{%B$pastel_blue%}git:(%{$pastel_yellow%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%B$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{%B$pastel_blue%}) %{$pastel_yellow%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{%B$pastel_blue%})"

###################
# System messages #
###################
system_style="%{%B$my_white%}%1{⋆%}"

function sysmsg {
  local message="$*"
  print -P $system_style "${message}"
}

function byebye {
  print -P $system_style "bye bye!!"
  sleep 0.2
}

###################
# Prompt Settings #
###################

function format_prompt {
  BAD_PROMPT="%{%B$bad_red%}%1{➜%} %{$bad_red%}%c%{$reset_color%}"
  GOOD_PROMPT="%{%B$my_white%}%1{➜%} %{$pink%}%c%{$reset_color%}"
  
  if [ "$1" -eq 0 ]; then
    echo $GOOD_PROMPT
  else
    echo $BAD_PROMPT
  fi
}

PROMPT="%(?: $(format_prompt 0) : $(format_prompt 1) )"
PROMPT+='$(git_prompt_info)'

# GNU
LS_COLORS="rs=0:di=01;35:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=00:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=33:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.avif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*~=00;90:*#=00;90:*.bak=00;90:*.crdownload=00;90:*.dpkg-dist=00;90:*.dpkg-new=00;90:*.dpkg-old=00;90:*.dpkg-tmp=00;90:*.old=00;90:*.orig=00;90:*.part=00;90:*.rej=00;90:*.rpmnew=00;90:*.rpmorig=00;90:*.rpmsave=00;90:*.swp=00;90:*.tmp=00;90:*.ucf-dist=00;90:*.ucf-new=00;90:*.ucf-old=00;90:*.tar.xz=33:"

# OSX
LSCOLORS="FxcxdxafCxegedabagacad"

### Startup message
sysmsg "Heyy! It's %D %t."

### Closing message
trap byebye EXIT

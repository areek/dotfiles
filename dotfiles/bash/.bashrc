# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#osx color terminal
export CLICOLOR=1
# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PS1='\[\033[01;31m\]\w\[\033[00m\]\n${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


# Set up TERM variables.
# vt100 and xterm have no color in vim (at least on unixs), but if we call them xterm-color, they will.
# (vt100 for F-Secure SSH.)
# This may well be the case for some other terms, so I'm putting them here.
# Also set up a variable to indicate whether to set up the title functions.
# TODO gnome-terminal, or however it reports itself
case $TERM in

  screen)
    TERM_IS_COLOR=true
    TERM_NOT_RECOGNIZED_AS_COLOR_BY_VIM=false
    TERM_NOT_RECOGNIZED_BY_SUN_UTILS=false
    TERM_CAN_TITLE=true
  ;;

  xterm-color|color_xterm|rxvt|Eterm|screen*) # screen.linux|screen-w
    TERM_IS_COLOR=true
    TERM_NOT_RECOGNIZED_AS_COLOR_BY_VIM=false
    TERM_NOT_RECOGNIZED_BY_SUN_UTILS=true
    TERM_CAN_TITLE=true
  ;;

  linux)
    TERM_IS_COLOR=true
    TERM_NOT_RECOGNIZED_AS_COLOR_BY_VIM=false
    TERM_NOT_RECOGNIZED_BY_SUN_UTILS=true
    TERM_CAN_TITLE=false
  ;;

  xterm|vt100)
    TERM_IS_COLOR=true
    TERM_NOT_RECOGNIZED_AS_COLOR_BY_VIM=true
    TERM_NOT_RECOGNIZED_BY_SUN_UTILS=false
    TERM_CAN_TITLE=true
  ;;

  *xterm*|eterm|rxvt*)
    TERM_IS_COLOR=true
    TERM_NOT_RECOGNIZED_AS_COLOR_BY_VIM=true
    TERM_NOT_RECOGNIZED_BY_SUN_UTILS=true
    TERM_CAN_TITLE=true
  ;;

  *)
    TERM_IS_COLOR=false
    TERM_NOT_RECOGNIZED_AS_COLOR_BY_VIM=false
    TERM_NOT_RECOGNIZED_BY_SUN_UTILS=false
    TERM_CAN_TITLE=false
  ;;

esac

# dircolors... make sure that we have a color terminal, dircolors exists, and ls supports it.
if $TERM_IS_COLOR && ( dircolors --help && ls --color ) &> /dev/null; then
  # For some reason, the unixs machines need me to use $HOME instead of ~
  # List files from highest priority to lowest.  As soon as the loop finds one that works, it will exit.
  for POSSIBLE_DIR_COLORS in "$HOME/.dir_colors" "/etc/DIR_COLORS"; do
    [[ -f "$POSSIBLE_DIR_COLORS" ]] && [[ -r "$POSSIBLE_DIR_COLORS" ]] && eval `dircolors -b "$POSSIBLE_DIR_COLORS"` && break
  done

  alias ls="ls --color=auto"
  alias ll="ls --color=auto -l"
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
else
  # No color, so put a slash at the end of directory names, etc. to differentiate.
  alias ls="ls -F"
  alias ll="ls -lF"
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
# Set $TERM for libvte terminals that set $TERM wrong (like gnome-terminal)
{
  [ "_$TERM" = "_xterm" ] && type ldd && type grep && type tput && [ -L "/proc/$PPID/exe" ] && {
    if ldd /proc/$PPID/exe | grep libvte; then
      if [ "`tput -Txterm-256color colors`" = "256" ]; then
        TERM=xterm-256color
      elif [ "`tput -Txterm-256color colors`" = "256" ]; then
        TERM=xterm-256color
      elif tput -T xterm; then
        TERM=xterm
      fi
    fi
  }
} >/dev/null 2>/dev/null

venwrap=`type -P virtualenvwrapper.sh`
if [ "$venwrap" != "" ]; then
    source $venwrap
fi

vim=`type -P vim`
if [ "$vim" == "" ]; then
    vim="gvim -v"
fi

alias vim="$vim"

# osx vim
if [ -x "/Applications/MacVim.app/Contents/MacOS/Vim" ]; then
    PATH=/Applications/MacVim.app/Contents/MacOS/:$PATH
fi

PYTHONSTARTUP=~/.pythonrc.py
export PYTHONSTARTUP
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac
 
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes
 
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
    else
    color_prompt=
    fi
fi
if [ "$color_prompt" = yes ]; then
    PS1='\[\e[0;34m\]┌──[\[\e[0;32m\]\u\[\e[0;31m\]@\[\e[0;35m\]\h\[\e[0;34m\]]──\[\e[0;34m\][\[\e[0;32m\]\w\[\e[0;34m\]] \n└── \[\e[0;34m\]'
else
    PS1='┌────[\u@\h]────────────────────────────────────────[\t]────┐ \n└───>[${PWD}] \$ '
fi
#------------------------------------------////
# Colors:
#------------------------------------------////
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'

FGNAMES=('▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐' '▐▐▐')
BGNAMES=('  ')
 
for b in $(seq 0 0); do
    if [ "$b" -gt 0 ]; then
      bg=$(($b+39))
    fi
#echo -en "\033[0m ${BGNAMES[$b]}"
echo
    for f in $(seq 0 7); do
      echo -en "\033[${bg}m\033[$(($f+30))m ${FGNAMES[$f]} "
      echo -en "\033[${bg}m\033[1;$(($f+30))m ${FGNAMES[$f]} "
    done
echo
  echo -e "\033[0m"  
done
unset color_prompt force_color_prompt
parse_git_branch ()
{
  git name-rev HEAD 2> /dev/null | sed 's#HEAD\ \(.*\)#(git::\1)#'
}
parse_svn_branch() {
  parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk -F / '{print "(svn::"$1 "/" $2 ")"}'
}
parse_svn_url() {
  svn info 2>/dev/null | sed -ne 's#^URL: ##p'
}
parse_svn_repository_root() {
  svn info 2>/dev/null | sed -ne 's#^Repository Root: ##p'
}
extract() {    
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2) tar xvjf "$1"   ;;
      *.tar.gz)  tar xvzf "$1"   ;;
      *.bz2)     bunzip2 "$1"    ;;
      *.rar)     unrar x "$1"    ;;
      *.gz)      gunzip "$1"     ;;
      *.tar)     tar xvf "$1"    ;;
      *.tbz2)    tar xvjf "$1"   ;;
      *.tgz)     tar xvzf "$1"   ;;
      *.zip)     unzip "$1"      ;;
      *.Z)       uncompress "$1" ;;
      *.7z)      7z x "$1"       ;;
      *)
      echo "'$1' cannot be extracted"
      return 1
      ;;
    esac
  else
    echo "'$1' is not a valid file"
    return 1
  fi
  return 0
}
set -o emacs
export EDITOR="$vim"
export GIT_EDITOR="$vim"

# Add git and svn branch names
export PS1="$PS1\$(parse_git_branch)\$(parse_svn_branch) "

TERM="screen-256color"

#load aliases 
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash 
fi

#colors
GREEN="\[$(tput setaf 28)\]"
RED="\[$(tput setaf 124)\]"
YELLOW="\[$(tput setaf 184)\]"
BLUE="\[$(tput setaf 27)\]"
VIOLET="\[$(tput setaf 93)\]"
LIGHT_BLUE="\[$(tput setaf 51)\]"
ORANGE="\[$(tput setaf 130)\]"
PINK="\[$(tput setaf 199)\]"
WHITE="\[$(tput setaf 255)\]"
GRAY="\[$(tput setaf 245)\]"
#styles
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

PS1=\
"${YELLOW}[\A] ${GREEN}\H \
${LIGHT_BLUE}${BOLD}\u${RESET}\
${RED}@${LIGHT_BLUE}\w\n\
${VIOLET}${BOLD}WIN87>>${RESET}"

source /opt/rh/perl516/enable

PATH=$PATH:~/.PATH
EDITOR='vim'

export PS1
export TERM
export EDITOR
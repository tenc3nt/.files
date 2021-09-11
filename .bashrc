# [[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

export GTK_OVERLAY_SCROLLING=0

export PATH=$PATH:~/.config/bin

if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
		exec fish
fi

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias cl='cd $HOME && clear'
alias untar='tar -xvf'
jfc
PS1='\W \$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

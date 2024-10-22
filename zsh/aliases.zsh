alias vim='nvim'
alias vi='nvim'
# alias ra='ranger'
alias ra='ranger --choosedir=$HOME/.rangerdir;LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias t='tmux'
alias tn='tmux new -s zelong'
# avoid using the following command as it'll lead to nesting ... 1 tmux session is already enough 
alias t1='tmux new -s 1'
alias t2='tmux new -s 2'

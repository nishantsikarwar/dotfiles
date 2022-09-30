# set fish_greeting ''÷
if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
colorscript random
alias ls='lsd -la'
alias config="git --git-dir=$HOME/.cfg --work-tree=$HOME"
alias docs="git --git-dir=$HOME/.sdysp --work-tree=$HOME"
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
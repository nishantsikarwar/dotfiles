if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
alias ls='exa -alh'
alias config="git --git-dir=$HOME/.cfg --work-tree=$HOME"
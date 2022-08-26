if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
alias ls='exa -alh'
alias config="git --git-dir=$HOME/.cfg --work-tree=$HOME"
alias docs="git --git-dir=$HOME/.sdysp --work-tree=$HOME"
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
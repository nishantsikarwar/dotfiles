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
set GOPATH $HOME/go
enable_transience

# set GNUBINS "$(find `brew --prefix`/opt -type d -follow -name gnubin -print)"

# for bindir in ${GNUBINS[@]}
# do
#   export PATH=$bindir:$PATH
# done
# end
# export PATH

# set GNUBINS "$(find (brew --prefix)/opt -type d -follow -name gnubin -print)"
# # export GNUBINS="$(find /usr/local/opt -type d -follow -name gnubin -print)";

# for bindir in $GNUBINS; 
#   set PATH $bindir:$PATH;
# end;
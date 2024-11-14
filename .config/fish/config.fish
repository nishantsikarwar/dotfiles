# set fish_greeting ''÷
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline



set STARSHIP_CONFIG "$ZDOTDIR/starship/config.toml"
set STARSHIP_CACHE "$ZDOTDIR/starship/cache"
starship init fish | source
colorscript --exec doom-outlined
alias ls='lsd -la'
alias config="git --git-dir=$HOME/.cfg --work-tree=$HOME"
alias docs="git --git-dir=$HOME/.sdysp --work-tree=$HOME"
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
set GOPATH $HOME/go
set PATH /Users/nishantsikarwar/go/src/k8s.io/kubernetes/third_party/etcd:$PATH
enable_transience

set -gx PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)

# fish
fzf --fish | source
set -Ux FZF_DEFAULT_OPTS '--height 40% --layout=reverse --border'


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

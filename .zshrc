# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
alias python='python3'
set completion-ignore-case on
set show-all-if-ambiguous on

#source /Users/nishantsikarwar/.powerlevel10k/powerlevel10k.zsh-theme
# Neofetch
colorscript random
#fortune | cowsay | lolcat

# # .zshrc
# autoload -U promptinit; promptinit
# prompt spaceship

fish
# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# autoload -Uz compinit && compinit

# zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
# fpath=(~/.zsh $fpath)
# # rm /Users/nishantsikarwar/.zcompdump
# export PATH=$PATH:/opt/gradle/gradle-6.8.3/bin
# export PATH=$PATH:/Users/nishantsikarwar/Library/Python/3.9/bin
# #source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
# eval "$(starship init zsh)"
# # .zshrc
# #autoload -U promptinit; promptinit
# #prompt spaceship
# #typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
# #eval "$(starship init zsh)"
# alias ls='exa -alh'

# # Load Angular CLI autocompletion.
# source <(ng completion script)
# export PATH="/usr/local/opt/node@16/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/node@16/lib"
# export CPPFLAGS="-I/usr/local/opt/node@16/include"

# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#   #if type brew &>/dev/null; then
#    # FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
#     #autoload -Uz compinit
#     #compinit
#   #fi

# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

alias config="git --git-dir=$HOME/.cfg --work-tree=$HOME"
alias docs="git --git-dir=$HOME/.sdysp --work-tree=$HOME"

# # #prompt spaceship
# echo "source $(brew --prefix)/opt/spaceship/spaceship.zsh" >>! ~/.zshrc
# source /usr/local/opt/spaceship/spaceship.zsh
# source /usr/local/opt/spaceship/spaceship.zsh
# source /usr/local/opt/spaceship/spaceship.zsh
# source /usr/local/opt/spaceship/spaceship.zsh

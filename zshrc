# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 14

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias vim="/home/han/git/nvim/bin/nvim"
alias w="watchcmd"
alias g="google"

alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gd="git diff"
alias gri="git rebase"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias wgd="watchcmd 'git diff' *"

export PATH=$PATH:~/.local/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:~/.cargo/bin

for file in ~/.scripts/*; do
    source "$file"
done

source $HOME/miniconda3/bin/activate

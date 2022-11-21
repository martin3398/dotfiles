# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="~/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

setopt NO_HUP

DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"


ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg-7'

plugins=(
    archlinux
    git
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
    cp
    zshmarks
)

source $ZSH/oh-my-zsh.sh

alias l='ls -lhF'
alias free='free -mht'
alias pacman='pacman --color=auto'
alias checkupdates-aur='yay -Qu --aur'
alias checkupdates+aur='(checkupdates; checkupdates-aur)'
alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias anaconda='source /opt/anaconda/bin/activate'
alias tree='tree --dirsfirst -C'
alias vi='vim'
alias v='vim'
alias dfh='df -h'
alias xz='xz -T11 -k -v'
alias msg='ferdi'

alias cdb='jump'
alias cda='bookmark'
alias cdd='deletemark'
alias cdl='showmarks'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

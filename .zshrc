# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#Export the path to the oh-my-zsh directory
export ZSH="$HOME/.oh-my-zsh"

#Set the ZSH theme to "arch"
ZSH_THEME="powerlevel10k/powerlevel10k"

#Specify the plugins to be loaded
plugins=(git kitty zsh-autosuggestions)

#Set the highlight style for ZSH autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ecf0f1"

#Source the oh-my-zsh initialization script
source $ZSH/oh-my-zsh.sh

#Add the user's bin directory to the PATH
export PATH="$PATH:$HOME/.bin"


alias cls='clear'
alias Sy='sudo pacman -Sy'
alias Syy='sudo pacman -Syy'
alias Syu='sudo pacman -Syu'
alias Syyu='sudo pacman -Syyu'

# colors
export TERM="xterm-256color"
export COLORTERM="truecolor"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# enable color support for common commands 
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
eval $(dircolors -b ~/.dircolors)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

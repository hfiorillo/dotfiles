#---Oh-My-ZSH Path and Options---#
export ZSH="/Users/harry.hughes/.oh-my-zsh"
export UPDATE_ZSH_DAYS=1
ZSH_THEME="powerlevel10k/powerlevel10k"

#---ZSH Plugins---#
plugins=(
  ansible
  aws
  azcli
  brew
  git
  helm
  kubectl
  docker
  npm
  emoji
  golang
  terraform
  tmux
  vagrant
)

#---Source OMZ---#
source $ZSH/oh-my-zsh.sh

# ZSH Syntax Highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

#---Basics---#
alias l="ls -lah"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

#---VS Code Terminal---#
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

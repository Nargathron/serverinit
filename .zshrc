export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)" >> .zshrc
alias dl="docker logs"
alias dr="docker restart"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"

PROMPT='%~ '
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/zsh/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/bin:$PATH"
export PATH="/usr/local/opt/go/bin:$PATH"
export PATH="~/.cargo/bin:$PATH"
alias upgrade="brew upgrade & softwareupdate -ia && brew cleanup"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi


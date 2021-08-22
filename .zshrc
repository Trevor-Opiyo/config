PROMPT="%~ "

export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/bin:$PATH"
export PATH="/usr/local/opt/go/bin:$PATH"
export PATH="/usr/local/opt/zsh/bin:$PATH"
export PATH="/Users/trevoropiyo/.cargo/bin:$PATH"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

alias upgrade="softwareupdate -ldia & brew upgrade && brew cleanup"

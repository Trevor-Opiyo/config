PROMPT='%~ '
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/zsh/bin:$PATH"
export PATH="/usr/local/opt/nano/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/bin:$PATH"
eval $(thefuck --alias)
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/bin/python3/bin:$PATH"
alias pref="nvim .config/alacritty/alacritty.yml"
alias upgrade="brew upgrade; mas upgrade; softwareupdate -ia"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/go/bin:$PATH"
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
autoload -Uz compinit
  compinit
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
alias alap="rm -f ~/Github/config/alacritty.yml && cp -r ~/.config/alacritty/alacritty.yml ~/Github/config/"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
